// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_azuread_administrator.dart';
import 'server_identity.dart';

/// {@template pulumi_mssql_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_server_args_doc}
class ServerArgs {
  /// The administrator login name for the new server. Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorLogin;
  /// The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx).
  final pulumi.Input<String>? administratorLoginPassword;
  /// An integer value used to trigger an update for `administrator_login_password_wo`. This property should be incremented when updating `administrator_login_password_wo`.
  final pulumi.Input<int>? administratorLoginPasswordWoVersion;
  /// An `azuread_administrator` block as defined below.
  final pulumi.Input<ServerAzureadAdministrator>? azureadAdministrator;
  /// The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`.
  final pulumi.Input<String>? connectionPolicy;
  /// Whether to enable the Express Vulnerability Assessment Configuration. Defaults to `false`.
  ///
  /// > **Note:** If you have enabled the Classic SQL Vulnerability Assessment configuration using the `azure.mssql.ServerVulnerabilityAssessment` resource, you must first delete it before enabling `express_vulnerability_assessment_enabled`. If you wish to revert back to using the Classic SQL Vulnerability Assessment configuration you must first disable this setting.
  final pulumi.Input<bool>? expressVulnerabilityAssessmentEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<ServerIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`.
  ///
  /// > **Note:** The `minimum_tls_version` is set to `Disabled` means all TLS versions are allowed. After you enforce a version of `minimum_tls_version`, it's not possible to revert to `Disabled`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether outbound network traffic is restricted for this server. Defaults to `false`.
  final pulumi.Input<bool>? outboundNetworkRestrictionEnabled;
  /// Specifies the primary user managed identity id. Required if `type` within the `identity` block is set to either `SystemAssigned, UserAssigned` or `UserAssigned` and should be set at same time as setting `identity_ids`.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;
  /// Whether public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  ///
  /// > **Note:** To successfully deploy a `Microsoft SQL Server` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`.
  ///
  /// > **Note:** Cross-tenant `Key Vault` and `Microsoft SQL Server` interactions are not supported. Please see the [product documentation](https://learn.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview?view=azuresql#requirements-for-configuring-customer-managed-tde) for more information.
  ///
  /// > **Note:** When using a firewall with a `Key Vault`, you must enable the option `Allow trusted Microsoft services to bypass the firewall`.
  final pulumi.Input<String>? transparentDataEncryptionKeyVaultKeyId;
  /// The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created.
  final pulumi.Input<String> version;

  /// Creates a new [ServerArgs].
  /// [administratorLogin] The administrator login name for the new server. Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created.
  /// [administratorLoginPassword] The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx).
  /// [administratorLoginPasswordWoVersion] An integer value used to trigger an update for `administrator_login_password_wo`. This property should be incremented when updating `administrator_login_password_wo`.
  /// [azureadAdministrator] An `azuread_administrator` block as defined below.
  /// [connectionPolicy] The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`.
  /// [expressVulnerabilityAssessmentEnabled] Whether to enable the Express Vulnerability Assessment Configuration. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [minimumTlsVersion] The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`.
  /// [name] The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  /// [outboundNetworkRestrictionEnabled] Whether outbound network traffic is restricted for this server. Defaults to `false`.
  /// [primaryUserAssignedIdentityId] Specifies the primary user managed identity id. Required if `type` within the `identity` block is set to either `SystemAssigned, UserAssigned` or `UserAssigned` and should be set at same time as setting `identity_ids`.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transparentDataEncryptionKeyVaultKeyId] The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  /// [version] The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created.
  ServerArgs({
    String? administratorLogin,
    String? administratorLoginPassword,
    int? administratorLoginPasswordWoVersion,
    ServerAzureadAdministrator? azureadAdministrator,
    String? connectionPolicy,
    bool? expressVulnerabilityAssessmentEnabled,
    ServerIdentity? identity,
    String? location,
    String? minimumTlsVersion,
    String? name,
    bool? outboundNetworkRestrictionEnabled,
    String? primaryUserAssignedIdentityId,
    bool? publicNetworkAccessEnabled,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? transparentDataEncryptionKeyVaultKeyId,
    required String version,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      administratorLoginPasswordWoVersion = pulumi.Input.asOptionalInput<int>(administratorLoginPasswordWoVersion),
      azureadAdministrator = pulumi.Input.asOptionalInput<ServerAzureadAdministrator>(azureadAdministrator),
      connectionPolicy = pulumi.Input.asOptionalInput<String>(connectionPolicy),
      expressVulnerabilityAssessmentEnabled = pulumi.Input.asOptionalInput<bool>(expressVulnerabilityAssessmentEnabled),
      identity = pulumi.Input.asOptionalInput<ServerIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumTlsVersion = pulumi.Input.asOptionalInput<String>(minimumTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundNetworkRestrictionEnabled = pulumi.Input.asOptionalInput<bool>(outboundNetworkRestrictionEnabled),
      primaryUserAssignedIdentityId = pulumi.Input.asOptionalInput<String>(primaryUserAssignedIdentityId),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transparentDataEncryptionKeyVaultKeyId = pulumi.Input.asOptionalInput<String>(transparentDataEncryptionKeyVaultKeyId),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'administratorLoginPasswordWoVersion': ?administratorLoginPasswordWoVersion,
      'azureadAdministrator': ?pulumi.Input.mapOptionalInputValue<ServerAzureadAdministrator, Map<String, dynamic>>(azureadAdministrator, (value) => value.toMap()),
      'connectionPolicy': ?connectionPolicy,
      'expressVulnerabilityAssessmentEnabled': ?expressVulnerabilityAssessmentEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'outboundNetworkRestrictionEnabled': ?outboundNetworkRestrictionEnabled,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'transparentDataEncryptionKeyVaultKeyId': ?transparentDataEncryptionKeyVaultKeyId,
      'version': version,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      administratorLogin: map['administratorLogin'] == null ? null : map['administratorLogin'] as String,
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : map['administratorLoginPassword'] as String,
      administratorLoginPasswordWoVersion: map['administratorLoginPasswordWoVersion'] == null ? null : map['administratorLoginPasswordWoVersion'] as int,
      azureadAdministrator: map['azureadAdministrator'] == null ? null : ServerAzureadAdministrator.fromMap((map['azureadAdministrator'] as Map).cast<String, dynamic>()),
      connectionPolicy: map['connectionPolicy'] == null ? null : map['connectionPolicy'] as String,
      expressVulnerabilityAssessmentEnabled: map['expressVulnerabilityAssessmentEnabled'] == null ? null : map['expressVulnerabilityAssessmentEnabled'] as bool,
      identity: map['identity'] == null ? null : ServerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      outboundNetworkRestrictionEnabled: map['outboundNetworkRestrictionEnabled'] == null ? null : map['outboundNetworkRestrictionEnabled'] as bool,
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : map['primaryUserAssignedIdentityId'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transparentDataEncryptionKeyVaultKeyId: map['transparentDataEncryptionKeyVaultKeyId'] == null ? null : map['transparentDataEncryptionKeyVaultKeyId'] as String,
      version: map['version'] as String,
    );
  }
}

