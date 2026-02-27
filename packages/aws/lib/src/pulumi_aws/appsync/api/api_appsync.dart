import 'package:pulumi/pulumi.dart' as pulumi;
import '../api_event_config/api_event_config.dart';
import 'api_appsync_args.dart';

/// Manages an [AWS AppSync Event API](https://docs.aws.amazon.com/appsync/latest/eventapi/event-api-concepts.html#API). Event APIs enable real-time subscriptions and event-driven communication in AppSync applications.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Cognito Authentication
///
///
///
/// ### With Lambda Authorizer
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Event API using the `api_id`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/api:Api example example-api-id
/// ```
class ApiAppsync extends pulumi.CustomResource {
  /// ARN of the Event API.
  late final pulumi.Output<String> apiArn;

  /// ID of the Event API.
  late final pulumi.Output<String> apiId;

  /// DNS configuration for the Event API.
  late final pulumi.Output<Map<String, String>> dns;

  /// Configuration for the Event API. See Event Config below.
  late final pulumi.Output<ApiEventConfig> eventConfig;

  /// Name of the Event API.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Contact information for the owner of the Event API.
  late final pulumi.Output<String?> ownerContact;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the associated WAF web ACL.
  late final pulumi.Output<String> wafWebAclArn;
  late final pulumi.Output<bool> xrayEnabled;

  ApiAppsync(
    String name, {
    ApiAppsyncArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/api:Api',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiArn = registerOutput<String>('apiArn');
    this.apiId = registerOutput<String>('apiId');
    this.dns = registerOutput<Map<String, String>>('dns');
    this.eventConfig = registerOutput<ApiEventConfig>('eventConfig');
    this.name = registerOutput<String>('name');
    this.ownerContact = registerOutput<String?>('ownerContact');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.wafWebAclArn = registerOutput<String>('wafWebAclArn');
    this.xrayEnabled = registerOutput<bool>('xrayEnabled');
  }
}
