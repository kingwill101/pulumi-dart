// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_network.dart';

/// {@template pulumi_backupdisasterrecovery_management_server_management_server_args_doc}
/// The set of arguments for ManagementServer.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_management_server_management_server_args_doc}
class ManagementServerArgs {
  /// The location for the management server (management console)
  final pulumi.Input<String> location;

  /// The name of management server (management console)
  final pulumi.Input<String>? name;

  /// Network details to create management server (management console).
  /// Structure is documented below.
  final pulumi.Input<List<ManagementServerNetwork>>? networks;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The type of management server (management console).
  /// Default value is `BACKUP_RESTORE`.
  /// Possible values are: `BACKUP_RESTORE`.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagementServerArgs].
  /// [location] The location for the management server (management console)
  /// [name] The name of management server (management console)
  /// [networks] Network details to create management server (management console).
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of management server (management console).
  ManagementServerArgs({
    required String location,
    String? name,
    List<ManagementServerNetwork>? networks,
    String? project,
    String? type,
  })  : location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        networks = pulumi.Input.asOptionalInput<List<ManagementServerNetwork>>(
            networks),
        project = pulumi.Input.asOptionalInput<String>(project),
        type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = pulumi.Input.mapOptionalInputValue<
              List<ManagementServerNetwork>, List<Map<String, dynamic>>>(
          networksValue,
          (value) => pulumi.Input.encodeList<ManagementServerNetwork,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return ManagementServerArgs(
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networks: map['networks'] == null
          ? null
          : pulumi.Input.decodeList<ManagementServerNetwork>(
              map['networks'],
              (value) => ManagementServerNetwork.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
