// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stack_access_endpoint/stack_access_endpoint.dart';
import '../stack_application_settings/stack_application_settings.dart';
import '../stack_storage_connector/stack_storage_connector.dart';
import '../stack_streaming_experience_settings/stack_streaming_experience_settings.dart';
import '../stack_user_setting/stack_user_setting.dart';

/// The set of arguments for Stack.
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
  final pulumi.Input<StackStreamingExperienceSettings>?
      streamingExperienceSettings;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  /// See `user_settings` below.
  final pulumi.Input<List<StackUserSetting>>? userSettings;

  StackArgs({
    this.accessEndpoints,
    this.applicationSettings,
    this.description,
    this.displayName,
    this.embedHostDomains,
    this.feedbackUrl,
    this.name,
    this.redirectUrl,
    this.region,
    this.storageConnectors,
    this.streamingExperienceSettings,
    this.tags,
    this.userSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessEndpointsValue = accessEndpoints;
    if (accessEndpointsValue != null) {
      map['accessEndpoints'] = pulumi.Input.mapOptionalInputValue<
              List<StackAccessEndpoint>, List<Map<String, dynamic>>>(
          accessEndpointsValue,
          (value) => pulumi.Input.encodeList<StackAccessEndpoint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final applicationSettingsValue = applicationSettings;
    if (applicationSettingsValue != null) {
      map['applicationSettings'] = pulumi.Input.mapOptionalInputValue<
              StackApplicationSettings, Map<String, dynamic>>(
          applicationSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final embedHostDomainsValue = embedHostDomains;
    if (embedHostDomainsValue != null) {
      map['embedHostDomains'] = embedHostDomainsValue;
    }
    final feedbackUrlValue = feedbackUrl;
    if (feedbackUrlValue != null) {
      map['feedbackUrl'] = feedbackUrlValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final redirectUrlValue = redirectUrl;
    if (redirectUrlValue != null) {
      map['redirectUrl'] = redirectUrlValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageConnectorsValue = storageConnectors;
    if (storageConnectorsValue != null) {
      map['storageConnectors'] = pulumi.Input.mapOptionalInputValue<
              List<StackStorageConnector>, List<Map<String, dynamic>>>(
          storageConnectorsValue,
          (value) => pulumi.Input.encodeList<StackStorageConnector,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final streamingExperienceSettingsValue = streamingExperienceSettings;
    if (streamingExperienceSettingsValue != null) {
      map['streamingExperienceSettings'] = pulumi.Input.mapOptionalInputValue<
              StackStreamingExperienceSettings, Map<String, dynamic>>(
          streamingExperienceSettingsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userSettingsValue = userSettings;
    if (userSettingsValue != null) {
      map['userSettings'] = pulumi.Input.mapOptionalInputValue<
              List<StackUserSetting>, List<Map<String, dynamic>>>(
          userSettingsValue,
          (value) =>
              pulumi.Input.encodeList<StackUserSetting, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory StackArgs.fromMap(Map<String, dynamic> map) {
    return StackArgs(
      accessEndpoints: pulumi.Input.asOptionalInput<List<StackAccessEndpoint>>(
          map['accessEndpoints']),
      applicationSettings:
          pulumi.Input.asOptionalInput<StackApplicationSettings>(
              map['applicationSettings']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      embedHostDomains:
          pulumi.Input.asOptionalInput<List<String>>(map['embedHostDomains']),
      feedbackUrl: pulumi.Input.asOptionalInput<String>(map['feedbackUrl']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      redirectUrl: pulumi.Input.asOptionalInput<String>(map['redirectUrl']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      storageConnectors:
          pulumi.Input.asOptionalInput<List<StackStorageConnector>>(
              map['storageConnectors']),
      streamingExperienceSettings:
          pulumi.Input.asOptionalInput<StackStreamingExperienceSettings>(
              map['streamingExperienceSettings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userSettings: pulumi.Input.asOptionalInput<List<StackUserSetting>>(
          map['userSettings']),
    );
  }
}
