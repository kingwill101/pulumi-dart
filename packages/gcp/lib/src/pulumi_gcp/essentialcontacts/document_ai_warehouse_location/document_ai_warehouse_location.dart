import 'package:pulumi/pulumi.dart';
import 'document_ai_warehouse_location_args.dart';

/// A location is used to initialize a project.
///
///
/// To get more information about Location, see:
///
/// * [API documentation](https://cloud.google.com/document-warehouse/docs/reference/rest/v1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/document-warehouse/docs/overview)
///
/// ## Example Usage
///
/// ### Document Ai Warehouse Location
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class DocumentAiWarehouseLocation extends CustomResource {
  /// The access control mode for accessing the customer data.
  /// Possible values are: `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI`, `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID`, `ACL_MODE_UNIVERSAL_ACCESS`.
  late final Output<String> accessControlMode;

  /// The type of database used to store customer data.
  /// Possible values are: `DB_INFRA_SPANNER`, `DB_CLOUD_SQL_POSTGRES`.
  late final Output<String> databaseType;

  /// The default role for the person who create a document.
  /// Possible values are: `DOCUMENT_ADMIN`, `DOCUMENT_EDITOR`, `DOCUMENT_VIEWER`.
  late final Output<String?> documentCreatorDefaultRole;

  /// The KMS key used for CMEK encryption. It is required that
  /// the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if
  /// encryption is available. If the kmsKey is left empty, no
  /// encryption will be enforced.
  late final Output<String?> kmsKey;

  /// The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  late final Output<String> location;

  /// The unique identifier of the project.
  late final Output<String> projectNumber;

  DocumentAiWarehouseLocation(
    String name, {
    DocumentAiWarehouseLocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiWarehouseLocation:DocumentAiWarehouseLocation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessControlMode = registerOutput<String>('accessControlMode');
    this.databaseType = registerOutput<String>('databaseType');
    this.documentCreatorDefaultRole =
        registerOutput<String?>('documentCreatorDefaultRole');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.location = registerOutput<String>('location');
    this.projectNumber = registerOutput<String>('projectNumber');
  }
}
