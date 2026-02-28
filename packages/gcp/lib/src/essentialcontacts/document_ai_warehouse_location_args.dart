// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_document_ai_warehouse_location_document_ai_warehouse_location_args_doc}
/// The set of arguments for DocumentAiWarehouseLocation.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_document_ai_warehouse_location_document_ai_warehouse_location_args_doc}
class DocumentAiWarehouseLocationArgs {
  /// The access control mode for accessing the customer data.
  /// Possible values are: `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI`, `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID`, `ACL_MODE_UNIVERSAL_ACCESS`.
  final pulumi.Input<String> accessControlMode;
  /// The type of database used to store customer data.
  /// Possible values are: `DB_INFRA_SPANNER`, `DB_CLOUD_SQL_POSTGRES`.
  final pulumi.Input<String> databaseType;
  /// The default role for the person who create a document.
  /// Possible values are: `DOCUMENT_ADMIN`, `DOCUMENT_EDITOR`, `DOCUMENT_VIEWER`.
  final pulumi.Input<String>? documentCreatorDefaultRole;
  /// The KMS key used for CMEK encryption. It is required that
  /// the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if
  /// encryption is available. If the kmsKey is left empty, no
  /// encryption will be enforced.
  final pulumi.Input<String>? kmsKey;
  /// The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  final pulumi.Input<String> location;
  /// The unique identifier of the project.
  final pulumi.Input<String> projectNumber;

  /// Creates a new [DocumentAiWarehouseLocationArgs].
  /// [accessControlMode] The access control mode for accessing the customer data.
  /// [databaseType] The type of database used to store customer data.
  /// [documentCreatorDefaultRole] The default role for the person who create a document.
  /// [kmsKey] The KMS key used for CMEK encryption. It is required that
  /// [location] The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  /// [projectNumber] The unique identifier of the project.
  DocumentAiWarehouseLocationArgs({
    required String accessControlMode,
    required String databaseType,
    String? documentCreatorDefaultRole,
    String? kmsKey,
    required String location,
    required String projectNumber,
  }) :
      accessControlMode = pulumi.Input.asInput<String>(accessControlMode),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      documentCreatorDefaultRole = pulumi.Input.asOptionalInput<String>(documentCreatorDefaultRole),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      location = pulumi.Input.asInput<String>(location),
      projectNumber = pulumi.Input.asInput<String>(projectNumber);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlMode': accessControlMode,
      'databaseType': databaseType,
      'documentCreatorDefaultRole': ?documentCreatorDefaultRole,
      'kmsKey': ?kmsKey,
      'location': location,
      'projectNumber': projectNumber,
    };
  }

  factory DocumentAiWarehouseLocationArgs.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseLocationArgs(
      accessControlMode: map['accessControlMode'] as String,
      databaseType: map['databaseType'] as String,
      documentCreatorDefaultRole: map['documentCreatorDefaultRole'] == null ? null : map['documentCreatorDefaultRole'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      location: map['location'] as String,
      projectNumber: map['projectNumber'] as String,
    );
  }
}

