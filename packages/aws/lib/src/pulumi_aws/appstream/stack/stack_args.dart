// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stack_access_endpoint/stack_access_endpoint.dart';
import '../stack_application_settings/stack_application_settings.dart';
import '../stack_storage_connector/stack_storage_connector.dart';
import '../stack_streaming_experience_settings/stack_streaming_experience_settings.dart';
import '../stack_user_setting/stack_user_setting.dart';

/// The set of arguments for Stack.
class StackArgs {
  /// Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
  /// See <span pulumi-lang-nodejs="`accessEndpoints`" pulumi-lang-dotnet="`AccessEndpoints`" pulumi-lang-go="`accessEndpoints`" pulumi-lang-python="`access_endpoints`" pulumi-lang-yaml="`accessEndpoints`" pulumi-lang-java="`accessEndpoints`">`access_endpoints`</span> below.
  final Input<List<StackAccessEndpoint>>? accessEndpoints;

  /// Settings for application settings persistence.
  /// See <span pulumi-lang-nodejs="`applicationSettings`" pulumi-lang-dotnet="`ApplicationSettings`" pulumi-lang-go="`applicationSettings`" pulumi-lang-python="`application_settings`" pulumi-lang-yaml="`applicationSettings`" pulumi-lang-java="`applicationSettings`">`application_settings`</span> below.
  final Input<StackApplicationSettings>? applicationSettings;

  /// Description for the AppStream stack.
  final Input<String>? description;

  /// Stack name to display.
  final Input<String>? displayName;

  /// Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
  final Input<List<String>>? embedHostDomains;

  /// URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. .
  final Input<String>? feedbackUrl;

  /// Unique name for the AppStream stack.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// URL that users are redirected to after their streaming session ends.
  final Input<String>? redirectUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for the storage connectors to enable.
  /// See <span pulumi-lang-nodejs="`storageConnectors`" pulumi-lang-dotnet="`StorageConnectors`" pulumi-lang-go="`storageConnectors`" pulumi-lang-python="`storage_connectors`" pulumi-lang-yaml="`storageConnectors`" pulumi-lang-java="`storageConnectors`">`storage_connectors`</span> below.
  final Input<List<StackStorageConnector>>? storageConnectors;

  /// The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.
  /// See <span pulumi-lang-nodejs="`streamingExperienceSettings`" pulumi-lang-dotnet="`StreamingExperienceSettings`" pulumi-lang-go="`streamingExperienceSettings`" pulumi-lang-python="`streaming_experience_settings`" pulumi-lang-yaml="`streamingExperienceSettings`" pulumi-lang-java="`streamingExperienceSettings`">`streaming_experience_settings`</span> below.
  final Input<StackStreamingExperienceSettings>? streamingExperienceSettings;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  /// See <span pulumi-lang-nodejs="`userSettings`" pulumi-lang-dotnet="`UserSettings`" pulumi-lang-go="`userSettings`" pulumi-lang-python="`user_settings`" pulumi-lang-yaml="`userSettings`" pulumi-lang-java="`userSettings`">`user_settings`</span> below.
  final Input<List<StackUserSetting>>? userSettings;

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
      map['accessEndpoints'] = Input.mapOptionalInputValue<
              List<StackAccessEndpoint>, List<Map<String, dynamic>>>(
          accessEndpointsValue,
          (value) =>
              Input.encodeList<StackAccessEndpoint, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final applicationSettingsValue = applicationSettings;
    if (applicationSettingsValue != null) {
      map['applicationSettings'] = Input.mapOptionalInputValue<
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
      map['storageConnectors'] = Input.mapOptionalInputValue<
              List<StackStorageConnector>, List<Map<String, dynamic>>>(
          storageConnectorsValue,
          (value) =>
              Input.encodeList<StackStorageConnector, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final streamingExperienceSettingsValue = streamingExperienceSettings;
    if (streamingExperienceSettingsValue != null) {
      map['streamingExperienceSettings'] = Input.mapOptionalInputValue<
              StackStreamingExperienceSettings, Map<String, dynamic>>(
          streamingExperienceSettingsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userSettingsValue = userSettings;
    if (userSettingsValue != null) {
      map['userSettings'] = Input.mapOptionalInputValue<List<StackUserSetting>,
              List<Map<String, dynamic>>>(
          userSettingsValue,
          (value) => Input.encodeList<StackUserSetting, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory StackArgs.fromMap(Map<String, dynamic> map) {
    return StackArgs(
      accessEndpoints: Input.asOptionalInput<List<StackAccessEndpoint>>(
          map['accessEndpoints']),
      applicationSettings: Input.asOptionalInput<StackApplicationSettings>(
          map['applicationSettings']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      embedHostDomains:
          Input.asOptionalInput<List<String>>(map['embedHostDomains']),
      feedbackUrl: Input.asOptionalInput<String>(map['feedbackUrl']),
      name: Input.asOptionalInput<String>(map['name']),
      redirectUrl: Input.asOptionalInput<String>(map['redirectUrl']),
      region: Input.asOptionalInput<String>(map['region']),
      storageConnectors: Input.asOptionalInput<List<StackStorageConnector>>(
          map['storageConnectors']),
      streamingExperienceSettings:
          Input.asOptionalInput<StackStreamingExperienceSettings>(
              map['streamingExperienceSettings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userSettings:
          Input.asOptionalInput<List<StackUserSetting>>(map['userSettings']),
    );
  }
}
