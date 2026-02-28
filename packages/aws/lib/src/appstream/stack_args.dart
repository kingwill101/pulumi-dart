// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_access_endpoint.dart';
import 'stack_application_settings.dart';
import 'stack_storage_connector.dart';
import 'stack_streaming_experience_settings.dart';
import 'stack_user_setting.dart';

/// {@template pulumi_appstream_stack_stack_args_doc}
/// The set of arguments for Stack.
/// {@endtemplate}
/// {@macro pulumi_appstream_stack_stack_args_doc}
class StackArgs {
  /// Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
  /// See `access_endpoints` below.
  final pulumi.Input<List<StackAccessEndpoint>>? accessEndpoints;
  /// Settings for application settings persistence.
  /// See `application_settings` below.
  final pulumi.Input<StackApplicationSettings>? applicationSettings;
  /// Description for the AppStream stack.
  final pulumi.Input<String>? description;
  /// Stack name to display.
  final pulumi.Input<String>? displayName;
  /// Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
  final pulumi.Input<List<String>>? embedHostDomains;
  /// URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. .
  final pulumi.Input<String>? feedbackUrl;
  /// Unique name for the AppStream stack.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// URL that users are redirected to after their streaming session ends.
  final pulumi.Input<String>? redirectUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the storage connectors to enable.
  /// See `storage_connectors` below.
  final pulumi.Input<List<StackStorageConnector>>? storageConnectors;
  /// The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.
  /// See `streaming_experience_settings` below.
  final pulumi.Input<StackStreamingExperienceSettings>? streamingExperienceSettings;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  /// See `user_settings` below.
  final pulumi.Input<List<StackUserSetting>>? userSettings;

  /// Creates a new [StackArgs].
  /// [accessEndpoints] Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
  /// [applicationSettings] Settings for application settings persistence.
  /// [description] Description for the AppStream stack.
  /// [displayName] Stack name to display.
  /// [embedHostDomains] Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
  /// [feedbackUrl] URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. .
  /// [name] Unique name for the AppStream stack.
  /// [redirectUrl] URL that users are redirected to after their streaming session ends.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageConnectors] Configuration block for the storage connectors to enable.
  /// [streamingExperienceSettings] The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userSettings] Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  StackArgs({
    List<StackAccessEndpoint>? accessEndpoints,
    StackApplicationSettings? applicationSettings,
    String? description,
    String? displayName,
    List<String>? embedHostDomains,
    String? feedbackUrl,
    String? name,
    String? redirectUrl,
    String? region,
    List<StackStorageConnector>? storageConnectors,
    StackStreamingExperienceSettings? streamingExperienceSettings,
    Map<String, String>? tags,
    List<StackUserSetting>? userSettings,
  }) :
      accessEndpoints = pulumi.Input.asOptionalInput<List<StackAccessEndpoint>>(accessEndpoints),
      applicationSettings = pulumi.Input.asOptionalInput<StackApplicationSettings>(applicationSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      embedHostDomains = pulumi.Input.asOptionalInput<List<String>>(embedHostDomains),
      feedbackUrl = pulumi.Input.asOptionalInput<String>(feedbackUrl),
      name = pulumi.Input.asOptionalInput<String>(name),
      redirectUrl = pulumi.Input.asOptionalInput<String>(redirectUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageConnectors = pulumi.Input.asOptionalInput<List<StackStorageConnector>>(storageConnectors),
      streamingExperienceSettings = pulumi.Input.asOptionalInput<StackStreamingExperienceSettings>(streamingExperienceSettings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userSettings = pulumi.Input.asOptionalInput<List<StackUserSetting>>(userSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoints': ?pulumi.Input.mapOptionalInputValue<List<StackAccessEndpoint>, List<Map<String, dynamic>>>(accessEndpoints, (value) => pulumi.Input.encodeList<StackAccessEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSettings': ?pulumi.Input.mapOptionalInputValue<StackApplicationSettings, Map<String, dynamic>>(applicationSettings, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'embedHostDomains': ?embedHostDomains,
      'feedbackUrl': ?feedbackUrl,
      'name': ?name,
      'redirectUrl': ?redirectUrl,
      'region': ?region,
      'storageConnectors': ?pulumi.Input.mapOptionalInputValue<List<StackStorageConnector>, List<Map<String, dynamic>>>(storageConnectors, (value) => pulumi.Input.encodeList<StackStorageConnector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'streamingExperienceSettings': ?pulumi.Input.mapOptionalInputValue<StackStreamingExperienceSettings, Map<String, dynamic>>(streamingExperienceSettings, (value) => value.toMap()),
      'tags': ?tags,
      'userSettings': ?pulumi.Input.mapOptionalInputValue<List<StackUserSetting>, List<Map<String, dynamic>>>(userSettings, (value) => pulumi.Input.encodeList<StackUserSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StackArgs.fromMap(Map<String, dynamic> map) {
    return StackArgs(
      accessEndpoints: map['accessEndpoints'] == null ? null : pulumi.Input.decodeList<StackAccessEndpoint>(map['accessEndpoints'], (value) => StackAccessEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      applicationSettings: map['applicationSettings'] == null ? null : StackApplicationSettings.fromMap((map['applicationSettings'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      embedHostDomains: map['embedHostDomains'] == null ? null : (map['embedHostDomains'] as List).cast<String>(),
      feedbackUrl: map['feedbackUrl'] == null ? null : map['feedbackUrl'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      redirectUrl: map['redirectUrl'] == null ? null : map['redirectUrl'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      storageConnectors: map['storageConnectors'] == null ? null : pulumi.Input.decodeList<StackStorageConnector>(map['storageConnectors'], (value) => StackStorageConnector.fromMap((value as Map).cast<String, dynamic>())),
      streamingExperienceSettings: map['streamingExperienceSettings'] == null ? null : StackStreamingExperienceSettings.fromMap((map['streamingExperienceSettings'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userSettings: map['userSettings'] == null ? null : pulumi.Input.decodeList<StackUserSetting>(map['userSettings'], (value) => StackUserSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

