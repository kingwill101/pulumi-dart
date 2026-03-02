// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_configurations_configuration_permission_policy.dart';

class GetAccessConfigurationsConfiguration {
  /// The AccessConfigurationId of the Access Configuration.
  final pulumi.Input<String> accessConfigurationId;
  /// The AccessConfigurationName of the Access Configuration.
  final pulumi.Input<String> accessConfigurationName;
  /// The Created Time of the Directory.
  final pulumi.Input<String> createTime;
  /// The Description of the Directory.
  final pulumi.Input<String> description;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The ID of the Access Configuration.
  final pulumi.Input<String> id;
  /// The Policy List.
  final pulumi.Input<List<GetAccessConfigurationsConfigurationPermissionPolicy>> permissionPolicies;
  /// The RelayState of the Access Configuration.
  final pulumi.Input<String> relayState;
  /// The SessionDuration of the Access Configuration.
  final pulumi.Input<int> sessionDuration;
  /// The StatusNotifications of the Access Configuration.
  final pulumi.Input<List<String>> statusNotifications;

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
      'permissionPolicies': pulumi.Input.mapInputValue<List<GetAccessConfigurationsConfigurationPermissionPolicy>, List<Map<String, dynamic>>>(permissionPolicies, (value) => pulumi.Input.encodeList<GetAccessConfigurationsConfigurationPermissionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relayState': relayState,
      'sessionDuration': sessionDuration,
      'statusNotifications': statusNotifications,
    };
  }

  factory GetAccessConfigurationsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessConfigurationsConfiguration(
      accessConfigurationId: (map['accessConfigurationId'] as String).input(),
      accessConfigurationName: (map['accessConfigurationName'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      directoryId: (map['directoryId'] as String).input(),
      id: (map['id'] as String).input(),
      permissionPolicies: (pulumi.Input.decodeList<GetAccessConfigurationsConfigurationPermissionPolicy>(map['permissionPolicies'], (value) => GetAccessConfigurationsConfigurationPermissionPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      relayState: (map['relayState'] as String).input(),
      sessionDuration: (map['sessionDuration'] as int).input(),
      statusNotifications: ((map['statusNotifications'] as List).cast<String>()).input(),
    );
  }
}

