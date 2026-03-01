// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_list_managed_cluster_user_credentials_args_doc}
/// Arguments for listManagedClusterUserCredentials.
/// {@endtemplate}
/// {@macro pulumi_containerservice_list_managed_cluster_user_credentials_args_doc}
class ListManagedClusterUserCredentialsArgs {
  /// Only apply to AAD clusters, specifies the format of returned kubeconfig. Format 'azure' will return azure auth-provider kubeconfig; format 'exec' will return exec format kubeconfig, which requires kubelogin binary in the path.
  final pulumi.Input<String>? format;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// server fqdn type for credentials to be returned
  final pulumi.Input<String>? serverFqdn;

  /// Creates a new [ListManagedClusterUserCredentialsArgs].
  /// [format] Only apply to AAD clusters, specifies the format of returned kubeconfig. Format 'azure' will return azure auth-provider kubeconfig; format 'exec' will return exec format kubeconfig, which requires kubelogin binary in the path.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [serverFqdn] server fqdn type for credentials to be returned
  ListManagedClusterUserCredentialsArgs({
    pulumi.Output<String>? format,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? serverFqdn,
  }) :
      format = pulumi.Input.asOptionalInput<String>(format),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      serverFqdn = pulumi.Input.asOptionalInput<String>(serverFqdn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'serverFqdn': ?serverFqdn,
    };
  }

  factory ListManagedClusterUserCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListManagedClusterUserCredentialsArgs(
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      serverFqdn: map['serverFqdn'] == null ? null : pulumi.Output.create<String>(map['serverFqdn'] as String),
    );
  }
}

