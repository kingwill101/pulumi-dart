// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_configurations_configuration_permission_policy.dart';

class GetAccessConfigurationsConfiguration {
  /// The AccessConfigurationId of the Access Configuration.
  final String accessConfigurationId;
  /// The AccessConfigurationName of the Access Configuration.
  final String accessConfigurationName;
  /// The Created Time of the Directory.
  final String createTime;
  /// The Description of the Directory.
  final String description;
  /// The ID of the Directory.
  final String directoryId;
  /// The ID of the Access Configuration.
  final String id;
  /// The Policy List.
  final List<GetAccessConfigurationsConfigurationPermissionPolicy> permissionPolicies;
  /// The RelayState of the Access Configuration.
  final String relayState;
  /// The SessionDuration of the Access Configuration.
  final int sessionDuration;
  /// The StatusNotifications of the Access Configuration.
  final List<String> statusNotifications;

  /// Creates a new [GetAccessConfigurationsConfiguration].
  /// [accessConfigurationId] The AccessConfigurationId of the Access Configuration.
  /// [accessConfigurationName] The AccessConfigurationName of the Access Configuration.
  /// [createTime] The Created Time of the Directory.
  /// [description] The Description of the Directory.
  /// [directoryId] The ID of the Directory.
  /// [id] The ID of the Access Configuration.
  /// [permissionPolicies] The Policy List.
  /// [relayState] The RelayState of the Access Configuration.
  /// [sessionDuration] The SessionDuration of the Access Configuration.
  /// [statusNotifications] The StatusNotifications of the Access Configuration.
  GetAccessConfigurationsConfiguration({
    required this.accessConfigurationId,
    required this.accessConfigurationName,
    required this.createTime,
    required this.description,
    required this.directoryId,
    required this.id,
    required this.permissionPolicies,
    required this.relayState,
    required this.sessionDuration,
    required this.statusNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': accessConfigurationId,
      'accessConfigurationName': accessConfigurationName,
      'createTime': createTime,
      'description': description,
      'directoryId': directoryId,
      'id': id,
      'permissionPolicies': pulumi.Input.encodeList<GetAccessConfigurationsConfigurationPermissionPolicy, Map<String, dynamic>>(permissionPolicies, (value) => value.toMap()),
      'relayState': relayState,
      'sessionDuration': sessionDuration,
      'statusNotifications': statusNotifications,
    };
  }

  factory GetAccessConfigurationsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessConfigurationsConfiguration(
      accessConfigurationId: map['accessConfigurationId'] as String,
      accessConfigurationName: map['accessConfigurationName'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      directoryId: map['directoryId'] as String,
      id: map['id'] as String,
      permissionPolicies: pulumi.Input.decodeList<GetAccessConfigurationsConfigurationPermissionPolicy>(map['permissionPolicies'], (value) => GetAccessConfigurationsConfigurationPermissionPolicy.fromMap((value as Map).cast<String, dynamic>())),
      relayState: map['relayState'] as String,
      sessionDuration: map['sessionDuration'] as int,
      statusNotifications: (map['statusNotifications'] as List).cast<String>(),
    );
  }
}

