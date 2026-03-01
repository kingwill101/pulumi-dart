// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_slot_custom_hostname_binding_slot_custom_hostname_binding_args_doc}
/// The set of arguments for SlotCustomHostnameBinding.
/// {@endtemplate}
/// {@macro pulumi_appservice_slot_custom_hostname_binding_slot_custom_hostname_binding_args_doc}
class SlotCustomHostnameBindingArgs {
  /// The ID of the App Service Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceSlotId;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  final pulumi.Input<String> hostname;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `thumbprint` must be specified when `ssl_state` is set.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [SlotCustomHostnameBindingArgs].
  /// [appServiceSlotId] The ID of the App Service Slot. Changing this forces a new resource to be created.
  /// [hostname] Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  /// [sslState] The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  /// [thumbprint] The SSL certificate thumbprint. Changing this forces a new resource to be created.
  SlotCustomHostnameBindingArgs({
    required String appServiceSlotId,
    required String hostname,
    String? sslState,
    String? thumbprint,
  }) :
      appServiceSlotId = pulumi.Input.asInput<String>(appServiceSlotId),
      hostname = pulumi.Input.asInput<String>(hostname),
      sslState = pulumi.Input.asOptionalInput<String>(sslState),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceSlotId': appServiceSlotId,
      'hostname': hostname,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
    };
  }

  factory SlotCustomHostnameBindingArgs.fromMap(Map<String, dynamic> map) {
    return SlotCustomHostnameBindingArgs(
      appServiceSlotId: map['appServiceSlotId'] as String,
      hostname: map['hostname'] as String,
      sslState: map['sslState'] == null ? null : map['sslState'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

