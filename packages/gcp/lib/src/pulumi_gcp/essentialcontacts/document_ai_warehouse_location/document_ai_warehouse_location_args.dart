// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DocumentAiWarehouseLocation.
class DocumentAiWarehouseLocationArgs {
  /// The access control mode for accessing the customer data.
  /// Possible values are: `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI`, `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID`, `ACL_MODE_UNIVERSAL_ACCESS`.
  final Input<String> accessControlMode;

  /// The type of database used to store customer data.
  /// Possible values are: `DB_INFRA_SPANNER`, `DB_CLOUD_SQL_POSTGRES`.
  final Input<String> databaseType;

  /// The default role for the person who create a document.
  /// Possible values are: `DOCUMENT_ADMIN`, `DOCUMENT_EDITOR`, `DOCUMENT_VIEWER`.
  final Input<String>? documentCreatorDefaultRole;

  /// The KMS key used for CMEK encryption. It is required that
  /// the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if
  /// encryption is available. If the kmsKey is left empty, no
  /// encryption will be enforced.
  final Input<String>? kmsKey;

  /// The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  final Input<String> location;

  /// The unique identifier of the project.
  final Input<String> projectNumber;

  DocumentAiWarehouseLocationArgs({
    required this.accessControlMode,
    required this.databaseType,
    this.documentCreatorDefaultRole,
    this.kmsKey,
    required this.location,
    required this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessControlMode'] = accessControlMode;
    map['databaseType'] = databaseType;
    final documentCreatorDefaultRoleValue = documentCreatorDefaultRole;
    if (documentCreatorDefaultRoleValue != null) {
      map['documentCreatorDefaultRole'] = documentCreatorDefaultRoleValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    map['location'] = location;
    map['projectNumber'] = projectNumber;
    return map;
  }

  factory DocumentAiWarehouseLocationArgs.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseLocationArgs(
      accessControlMode: Input.asInput<String>(map['accessControlMode']),
      databaseType: Input.asInput<String>(map['databaseType']),
      documentCreatorDefaultRole:
          Input.asOptionalInput<String>(map['documentCreatorDefaultRole']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      location: Input.asInput<String>(map['location']),
      projectNumber: Input.asInput<String>(map['projectNumber']),
    );
  }
}
