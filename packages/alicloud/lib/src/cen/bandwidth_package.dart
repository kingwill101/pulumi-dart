import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_package_args.dart';

/// ## Import
///
/// CEN bandwidth package can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/bandwidthPackage:BandwidthPackage example cenbwp-abc123456
/// ```
class BandwidthPackage extends pulumi.CustomResource {
  /// Whether to enable auto-renewal for the bandwidth package. Only applicable when `payment_type` is `PrePaid`. Valid values: `true`, `false`. Default to `false`.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  ///
  /// ->**NOTE:** PrePaid mode will deduct fees from the account directly and the bandwidth package can't be deleted before expired time.
  late final pulumi.Output<bool?> autoRenew;
  /// The bandwidth in Mbps of the bandwidth package. Cannot be less than 2Mbps.
  late final pulumi.Output<int> bandwidth;
  /// The name of the bandwidth package. Defaults to null.
  late final pulumi.Output<String> cenBandwidthPackageName;
  /// Field `charge_type` has been deprecated from version 1.97.0. Use `payment_type` and instead.
  late final pulumi.Output<String> chargeType;
  /// The description of the bandwidth package. Default to null.
  late final pulumi.Output<String?> description;
  /// The time of the bandwidth package to expire.
  late final pulumi.Output<String> expiredTime;
  /// The area A to which the network instance belongs. Valid values: `China` | `North-America` | `Asia-Pacific` | `Europe` | `Australia`.
  late final pulumi.Output<String> geographicRegionAId;
  /// The area B to which the network instance belongs. Valid values: `China` | `North-America` | `Asia-Pacific` | `Europe` | `Australia`.
  late final pulumi.Output<String> geographicRegionBId;
  /// Field `geographic_region_ids` has been deprecated from version 1.97.0. Use `geographic_region_a_id` and `geographic_region_b_id` instead.
  late final pulumi.Output<List<String>> geographicRegionIds;
  /// Field `name` has been deprecated from version 1.97.0. Use `cen_bandwidth_package_name` and instead.
  late final pulumi.Output<String> name;
  /// The billing method. Valid value: `PostPaid` | `PrePaid`. Default to `PrePaid`. If set to PrePaid, the bandwidth package can't be deleted before expired time.
  late final pulumi.Output<String> paymentType;
  /// The purchase period in month. Valid value: `1`, `2`, `3`, `6`, `12`.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  /// The association status of the bandwidth package.
  late final pulumi.Output<String> status;

  /// Creates a new [BandwidthPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BandwidthPackage]. {@macro pulumi_cen_bandwidth_package_bandwidth_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BandwidthPackage(
    String name, {
    BandwidthPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/bandwidthPackage:BandwidthPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.cenBandwidthPackageName = registerOutput<String>('cenBandwidthPackageName');
    this.chargeType = registerOutput<String>('chargeType');
    this.description = registerOutput<String?>('description');
    this.expiredTime = registerOutput<String>('expiredTime');
    this.geographicRegionAId = registerOutput<String>('geographicRegionAId');
    this.geographicRegionBId = registerOutput<String>('geographicRegionBId');
    this.geographicRegionIds = registerOutput<List<String>>('geographicRegionIds');
    this.name = registerOutput<String>('name');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.status = registerOutput<String>('status');
  }
}
