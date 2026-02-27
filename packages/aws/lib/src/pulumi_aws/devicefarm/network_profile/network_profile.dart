import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_profile_args.dart';

/// Provides a resource to manage AWS Device Farm Network Profiles.
/// ∂
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm network profile.
///
///
/// Using `pulumi import`, import DeviceFarm Network Profiles using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/networkProfile:NetworkProfile example arn:aws:devicefarm:us-west-2:123456789012:networkprofile:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class NetworkProfile extends pulumi.CustomResource {
  /// The Amazon Resource Name of this network profile.
  late final pulumi.Output<String> arn;

  /// The description of the network profile.
  late final pulumi.Output<String?> description;

  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  late final pulumi.Output<int?> downlinkBandwidthBits;

  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> downlinkDelayMs;

  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> downlinkJitterMs;

  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  late final pulumi.Output<int?> downlinkLossPercent;

  /// The name for the network profile.
  late final pulumi.Output<String> name;

  /// The ARN of the project for the network profile.
  late final pulumi.Output<String> projectArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  late final pulumi.Output<String?> type;

  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  late final pulumi.Output<int?> uplinkBandwidthBits;

  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> uplinkDelayMs;

  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> uplinkJitterMs;

  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  late final pulumi.Output<int?> uplinkLossPercent;

  NetworkProfile(
    String name, {
    NetworkProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/networkProfile:NetworkProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.downlinkBandwidthBits = registerOutput<int?>('downlinkBandwidthBits');
    this.downlinkDelayMs = registerOutput<int?>('downlinkDelayMs');
    this.downlinkJitterMs = registerOutput<int?>('downlinkJitterMs');
    this.downlinkLossPercent = registerOutput<int?>('downlinkLossPercent');
    this.name = registerOutput<String>('name');
    this.projectArn = registerOutput<String>('projectArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.uplinkBandwidthBits = registerOutput<int?>('uplinkBandwidthBits');
    this.uplinkDelayMs = registerOutput<int?>('uplinkDelayMs');
    this.uplinkJitterMs = registerOutput<int?>('uplinkJitterMs');
    this.uplinkLossPercent = registerOutput<int?>('uplinkLossPercent');
  }
}
