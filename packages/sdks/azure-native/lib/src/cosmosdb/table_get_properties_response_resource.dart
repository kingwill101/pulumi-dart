// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_restore_parameters_response.dart';

class TableGetPropertiesResponseResource {
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB table
  final pulumi.Input<String> id;
  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParametersResponse>? restoreParameters;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;

  /// Creates a new [TableGetPropertiesResponseResource].
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB table
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  TableGetPropertiesResponseResource({
    this.createMode,
    required this.etag,
    required this.id,
    this.restoreParameters,
    required this.rid,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createMode': ?createMode,
      'etag': etag,
      'id': id,
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<ResourceRestoreParametersResponse, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'rid': rid,
      'ts': ts,
    };
  }

  factory TableGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return TableGetPropertiesResponseResource(
      createMode: map['createMode'] == null ? null : (map['createMode'] as String).input(),
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>())).input(),
      rid: (map['rid'] as String).input(),
      ts: (map['ts'] as double).input(),
    );
  }
}

