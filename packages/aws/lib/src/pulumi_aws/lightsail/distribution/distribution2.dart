import 'package:pulumi/pulumi.dart';
import '../distribution_cache_behavior/distribution_cache_behavior.dart';
import '../distribution_cache_behavior_settings/distribution_cache_behavior_settings.dart';
import '../distribution_default_cache_behavior/distribution_default_cache_behavior2.dart';
import '../distribution_location/distribution_location.dart';
import '../distribution_origin/distribution_origin2.dart';
import 'distribution_args2.dart';

/// Manages a Lightsail content delivery network (CDN) distribution. Use this resource to cache content at edge locations and reduce latency for users accessing your content.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Instance Origin
///
///
///
/// ### Load Balancer Origin
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Distribution using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/distribution:Distribution example example-distribution
/// ```
class Distribution2 extends CustomResource {
  /// Alternate domain names of the distribution.
  late final Output<List<String>> alternativeDomainNames;

  /// ARN of the distribution.
  late final Output<String> arn;

  /// Bundle ID to use for the distribution.
  late final Output<String> bundleId;

  /// Cache behavior settings of the distribution. See below.
  late final Output<DistributionCacheBehaviorSettings?> cacheBehaviorSettings;

  /// Per-path cache behavior of the distribution. See below.
  late final Output<List<DistributionCacheBehavior>?> cacheBehaviors;

  /// Name of the SSL/TLS certificate attached to the distribution.
  late final Output<String?> certificateName;

  /// Timestamp when the distribution was created.
  late final Output<String> createdAt;

  /// Default cache behavior of the distribution. See below.
  late final Output<DistributionDefaultCacheBehavior2> defaultCacheBehavior;

  /// Domain name of the distribution.
  late final Output<String> domainName;

  /// IP address type of the distribution. Valid values: `dualstack`, `ipv4`. Default: `dualstack`.
  late final Output<String?> ipAddressType;

  /// Whether the distribution is enabled. Default: `true`.
  late final Output<bool?> isEnabled;

  /// Location of the distribution, such as the AWS Region and Availability Zone. See below.
  late final Output<List<DistributionLocation>> locations;

  /// Name of the distribution.
  late final Output<String> name;

  /// Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  ///
  /// The following arguments are optional:
  late final Output<DistributionOrigin2> origin;

  /// Public DNS of the origin.
  /// * `origin[0].resource_type` - Resource type of the origin resource (e.g., Instance).
  late final Output<String> originPublicDns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Lightsail resource type (e.g., Distribution).
  late final Output<String> resourceType;

  /// Status of the distribution.
  late final Output<String> status;

  /// Support code. Include this code in your email to support when you have questions about your Lightsail distribution. This code enables our support team to look up your Lightsail information more easily.
  late final Output<String> supportCode;

  /// Map of tags for the Lightsail Distribution. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Distribution2(
    String name, {
    DistributionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/distribution:Distribution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alternativeDomainNames =
        registerOutput<List<String>>('alternativeDomainNames');
    this.arn = registerOutput<String>('arn');
    this.bundleId = registerOutput<String>('bundleId');
    this.cacheBehaviorSettings =
        registerOutput<DistributionCacheBehaviorSettings?>(
            'cacheBehaviorSettings');
    this.cacheBehaviors =
        registerOutput<List<DistributionCacheBehavior>?>('cacheBehaviors');
    this.certificateName = registerOutput<String?>('certificateName');
    this.createdAt = registerOutput<String>('createdAt');
    this.defaultCacheBehavior =
        registerOutput<DistributionDefaultCacheBehavior2>(
            'defaultCacheBehavior');
    this.domainName = registerOutput<String>('domainName');
    this.ipAddressType = registerOutput<String?>('ipAddressType');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.locations = registerOutput<List<DistributionLocation>>('locations');
    this.name = registerOutput<String>('name');
    this.origin = registerOutput<DistributionOrigin2>('origin');
    this.originPublicDns = registerOutput<String>('originPublicDns');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
