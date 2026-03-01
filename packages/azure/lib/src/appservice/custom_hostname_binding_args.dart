// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_custom_hostname_binding_custom_hostname_binding_args_doc}
/// The set of arguments for CustomHostnameBinding.
/// {@endtemplate}
/// {@macro pulumi_appservice_custom_hostname_binding_custom_hostname_binding_args_doc}
class CustomHostnameBindingArgs {
  /// The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceName;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  final pulumi.Input<String> hostname;
  /// The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `thumbprint` must be specified when `ssl_state` is set.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CustomHostnameBindingArgs].
  /// [appServiceName] The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created.
  /// [hostname] Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  /// [sslState] The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  /// [thumbprint] The SSL certificate thumbprint. Changing this forces a new resource to be created.
  CustomHostnameBindingArgs({
    required String appServiceName,
    required String hostname,
    required String resourceGroupName,
    String? sslState,
    String? thumbprint,
  }) :
      appServiceName = pulumi.Input.asInput<String>(appServiceName),
      hostname = pulumi.Input.asInput<String>(hostname),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sslState = pulumi.Input.asOptionalInput<String>(sslState),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': appServiceName,
      'hostname': hostname,
      'resourceGroupName': resourceGroupName,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
    };
  }

  factory CustomHostnameBindingArgs.fromMap(Map<String, dynamic> map) {
    return CustomHostnameBindingArgs(
      appServiceName: map['appServiceName'] as String,
      hostname: map['hostname'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sslState: map['sslState'] == null ? null : map['sslState'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

