import 'package:pulumi/pulumi.dart' as pulumi;
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
class Hsm extends pulumi.CustomResource {
  /// The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  late final pulumi.Output<String> availabilityZone;

  /// The ID of Cloud HSM v2 cluster to which HSM will be added.
  late final pulumi.Output<String> clusterId;

  /// The id of the ENI interface allocated for HSM module.
  late final pulumi.Output<String> hsmEniId;

  /// The id of the HSM module.
  late final pulumi.Output<String> hsmId;

  /// The state of the HSM module.
  late final pulumi.Output<String> hsmState;

  /// The IP address of HSM module. Must be within the CIDR of selected subnet.
  ///
  /// > **NOTE:** Either `subnet_id` or `availability_zone` must be specified.
  late final pulumi.Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  late final pulumi.Output<String> subnetId;

  Hsm(
    String name, {
    HsmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/hsm:Hsm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
