// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_endpoint_settings.dart';

/// Specifies ProxyAgent settings for the virtual machine or virtual machine scale set. Minimum api-version: 2023-09-01.
class ProxyAgentSettings {
  /// Specifies whether ProxyAgent feature should be enabled on the virtual machine or virtual machine scale set.
  final pulumi.Input<bool>? enabled;
  /// Specifies the IMDS endpoint settings while creating the virtual machine or virtual machine scale set. Minimum api-version: 2024-03-01.
  final pulumi.Input<HostEndpointSettings>? imds;
  /// Increase the value of this property allows users to reset the key used for securing communication channel between guest and host.
  final pulumi.Input<int>? keyIncarnationId;
  /// Specifies the mode that ProxyAgent will execute on. Warning: this property has been deprecated, please specify 'mode' under particular hostendpoint setting.
  final pulumi.Input<String>? mode;
  /// Specifies the Wire Server endpoint settings while creating the virtual machine or virtual machine scale set. Minimum api-version: 2024-03-01.
  final pulumi.Input<HostEndpointSettings>? wireServer;

  /// Creates a new [ProxyAgentSettings].
  /// [enabled] Specifies whether ProxyAgent feature should be enabled on the virtual machine or virtual machine scale set.
  /// [imds] Specifies the IMDS endpoint settings while creating the virtual machine or virtual machine scale set. Minimum api-version: 2024-03-01.
  /// [keyIncarnationId] Increase the value of this property allows users to reset the key used for securing communication channel between guest and host.
  /// [mode] Specifies the mode that ProxyAgent will execute on. Warning: this property has been deprecated, please specify 'mode' under particular hostendpoint setting.
  /// [wireServer] Specifies the Wire Server endpoint settings while creating the virtual machine or virtual machine scale set. Minimum api-version: 2024-03-01.
  ProxyAgentSettings({
    this.enabled,
    this.imds,
    this.keyIncarnationId,
    this.mode,
    this.wireServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'imds': ?pulumi.Input.mapOptionalInputValue<HostEndpointSettings, Map<String, dynamic>>(imds, (value) => value.toMap()),
      'keyIncarnationId': ?keyIncarnationId,
      'mode': ?mode,
      'wireServer': ?pulumi.Input.mapOptionalInputValue<HostEndpointSettings, Map<String, dynamic>>(wireServer, (value) => value.toMap()),
    };
  }

  factory ProxyAgentSettings.fromMap(Map<String, dynamic> map) {
    return ProxyAgentSettings(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      imds: map['imds'] == null ? null : (HostEndpointSettings.fromMap((map['imds'] as Map).cast<String, dynamic>())).input(),
      keyIncarnationId: map['keyIncarnationId'] == null ? null : (map['keyIncarnationId'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      wireServer: map['wireServer'] == null ? null : (HostEndpointSettings.fromMap((map['wireServer'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

