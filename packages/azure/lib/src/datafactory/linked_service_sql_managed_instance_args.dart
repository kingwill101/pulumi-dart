// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sql_managed_instance_key_vault_connection_string.dart';
import 'linked_service_sql_managed_instance_key_vault_password.dart';

/// {@template pulumi_datafactory_linked_service_sql_managed_instance_linked_service_sql_managed_instance_args_doc}
/// The set of arguments for LinkedServiceSqlManagedInstance.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_sql_managed_instance_linked_service_sql_managed_instance_args_doc}
class LinkedServiceSqlManagedInstanceArgs {
  /// List of tags that can be used for describing the Data Factory Linked Service SQL Managed Instance.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string in which to authenticate with the SQL Managed Instance. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  ///
  /// > **Note:** When using service principal authentication, the connection string must not contain authentication values like `User Id`.
  final pulumi.Input<String>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service SQL Managed Instance.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service SQL Managed Instance.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `key_vault_connection_string` block as defined below. Use this argument to store SQL Managed Instance connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  final pulumi.Input<LinkedServiceSqlManagedInstanceKeyVaultConnectionString>? keyVaultConnectionString;
  /// A `key_vault_password` block as defined below. Use this argument to store SQL Managed Instance password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceSqlManagedInstanceKeyVaultPassword>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service SQL Managed Instance. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service SQL Managed Instance.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The service principal id in which to authenticate against the Azure SQL Managed Instance.
  final pulumi.Input<String>? servicePrincipalId;
  /// The service principal key in which to authenticate against the Azure SQL Managed Instance.
  final pulumi.Input<String>? servicePrincipalKey;
  /// The tenant id or name in which to authenticate against the Azure SQL Managed Instance.
  final pulumi.Input<String>? tenant;

  /// Creates a new [LinkedServiceSqlManagedInstanceArgs].
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service SQL Managed Instance.
  /// [connectionString] The connection string in which to authenticate with the SQL Managed Instance. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource to be created.
  /// [description] The description for the Data Factory Linked Service SQL Managed Instance.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service SQL Managed Instance.
  /// [keyVaultConnectionString] A `key_vault_connection_string` block as defined below. Use this argument to store SQL Managed Instance connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  /// [keyVaultPassword] A `key_vault_password` block as defined below. Use this argument to store SQL Managed Instance password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service SQL Managed Instance. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service SQL Managed Instance.
  /// [servicePrincipalId] The service principal id in which to authenticate against the Azure SQL Managed Instance.
  /// [servicePrincipalKey] The service principal key in which to authenticate against the Azure SQL Managed Instance.
  /// [tenant] The tenant id or name in which to authenticate against the Azure SQL Managed Instance.
  LinkedServiceSqlManagedInstanceArgs({
    List<String>? annotations,
    String? connectionString,
    required String dataFactoryId,
    String? description,
    String? integrationRuntimeName,
    LinkedServiceSqlManagedInstanceKeyVaultConnectionString? keyVaultConnectionString,
    LinkedServiceSqlManagedInstanceKeyVaultPassword? keyVaultPassword,
    String? name,
    Map<String, String>? parameters,
    String? servicePrincipalId,
    String? servicePrincipalKey,
    String? tenant,
  }) :
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultConnectionString = pulumi.Input.asOptionalInput<LinkedServiceSqlManagedInstanceKeyVaultConnectionString>(keyVaultConnectionString),
      keyVaultPassword = pulumi.Input.asOptionalInput<LinkedServiceSqlManagedInstanceKeyVaultPassword>(keyVaultPassword),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      servicePrincipalKey = pulumi.Input.asOptionalInput<String>(servicePrincipalKey),
      tenant = pulumi.Input.asOptionalInput<String>(tenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultConnectionString': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSqlManagedInstanceKeyVaultConnectionString, Map<String, dynamic>>(keyVaultConnectionString, (value) => value.toMap()),
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSqlManagedInstanceKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'tenant': ?tenant,
    };
  }

  factory LinkedServiceSqlManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSqlManagedInstanceArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      keyVaultConnectionString: map['keyVaultConnectionString'] == null ? null : LinkedServiceSqlManagedInstanceKeyVaultConnectionString.fromMap((map['keyVaultConnectionString'] as Map).cast<String, dynamic>()),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : LinkedServiceSqlManagedInstanceKeyVaultPassword.fromMap((map['keyVaultPassword'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'] as String,
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : map['servicePrincipalKey'] as String,
      tenant: map['tenant'] == null ? null : map['tenant'] as String,
    );
  }
}

