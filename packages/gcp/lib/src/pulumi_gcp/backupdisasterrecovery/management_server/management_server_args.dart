// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../management_server_network/management_server_network.dart';

/// The set of arguments for ManagementServer.
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

  ManagementServerArgs({
    required this.location,
    this.name,
    this.networks,
    this.project,
    this.type,
  });

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
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networks: pulumi.Input.asOptionalInput<List<ManagementServerNetwork>>(
          map['networks']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
