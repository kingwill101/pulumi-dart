// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_access_endpoint.dart';
import 'stack_application_settings.dart';
import 'stack_storage_connector.dart';
import 'stack_streaming_experience_settings.dart';
import 'stack_user_setting.dart';

/// Input properties used for looking up and filtering Stack resources.
class StackState {
  /// Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
  /// See `access_endpoints` below.
  final pulumi.Input<List<StackAccessEndpoint>>? accessEndpoints;
  /// Settings for application settings persistence.
  /// See `application_settings` below.
  final pulumi.Input<StackApplicationSettings>? applicationSettings;
  /// ARN of the appstream stack.
  final pulumi.Input<String>? arn;
  /// Date and time, in UTC and extended RFC 3339 format, when the stack was created.
  final pulumi.Input<String>? createdTime;
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
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  /// See `user_settings` below.
  final pulumi.Input<List<StackUserSetting>>? userSettings;

  /// Creates a new [StackState].
  /// [accessEndpoints] Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
  /// [applicationSettings] Settings for application settings persistence.
  /// [arn] ARN of the appstream stack.
  /// [createdTime] Date and time, in UTC and extended RFC 3339 format, when the stack was created.
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
  /// [tagsAll] Optional.
  /// [userSettings] Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  StackState({
    this.accessEndpoints,
    this.applicationSettings,
    this.arn,
    this.createdTime,
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
    this.tagsAll,
    this.userSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoints': ?pulumi.Input.mapOptionalInputValue<List<StackAccessEndpoint>, List<Map<String, dynamic>>>(accessEndpoints, (value) => pulumi.Input.encodeList<StackAccessEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSettings': ?pulumi.Input.mapOptionalInputValue<StackApplicationSettings, Map<String, dynamic>>(applicationSettings, (value) => value.toMap()),
      'arn': ?arn,
      'createdTime': ?createdTime,
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
      'tagsAll': ?tagsAll,
      'userSettings': ?pulumi.Input.mapOptionalInputValue<List<StackUserSetting>, List<Map<String, dynamic>>>(userSettings, (value) => pulumi.Input.encodeList<StackUserSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StackState.fromMap(Map<String, dynamic> map) {
    return StackState(
      accessEndpoints: (() { final guardedValue = map['accessEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StackAccessEndpoint>(guardedValue, (value) => StackAccessEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationSettings: (() { final guardedValue = map['applicationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackApplicationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embedHostDomains: (() { final guardedValue = map['embedHostDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      feedbackUrl: (() { final guardedValue = map['feedbackUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageConnectors: (() { final guardedValue = map['storageConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StackStorageConnector>(guardedValue, (value) => StackStorageConnector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      streamingExperienceSettings: (() { final guardedValue = map['streamingExperienceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackStreamingExperienceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userSettings: (() { final guardedValue = map['userSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StackUserSetting>(guardedValue, (value) => StackUserSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

