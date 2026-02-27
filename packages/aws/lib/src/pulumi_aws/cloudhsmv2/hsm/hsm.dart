import 'package:pulumi/pulumi.dart';
import 'hsm_args.dart';

/// Creates an HSM module in Amazon CloudHSM v2 cluster.
///
/// ## Example Usage
///
/// The following example below creates an HSM module in CloudHSM cluster.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import HSM modules using their HSM ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudhsmv2/hsm:Hsm bar hsm-quo8dahtaca
/// ```
class Hsm extends CustomResource {
  /// The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  late final Output<String> availabilityZone;

  /// The ID of Cloud HSM v2 cluster to which HSM will be added.
  late final Output<String> clusterId;

  /// The id of the ENI interface allocated for HSM module.
  late final Output<String> hsmEniId;

  /// The id of the HSM module.
  late final Output<String> hsmId;

  /// The state of the HSM module.
  late final Output<String> hsmState;

  /// The IP address of HSM module. Must be within the CIDR of selected subnet.
  ///
  /// > **NOTE:** Either `subnet_id` or `availability_zone` must be specified.
  late final Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  late final Output<String> subnetId;

  Hsm(
    String name, {
    HsmArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/hsm:Hsm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.clusterId = registerOutput<String>('clusterId');
    this.hsmEniId = registerOutput<String>('hsmEniId');
    this.hsmId = registerOutput<String>('hsmId');
    this.hsmState = registerOutput<String>('hsmState');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
