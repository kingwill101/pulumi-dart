// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsBackupClient resources.
class EcsBackupClientState {
  /// The data plane access point type. Valid values: `CLASSIC`, `PUBLIC`, `VPC`. **NOTE:** The value of `CLASSIC` has been deprecated in v1.161.0+.
  final pulumi.Input<String>? dataNetworkType;
  /// The data plane proxy settings. Valid values: `CUSTOM`, `DISABLE`, `USE_CONTROL_PROXY`.
  final pulumi.Input<String>? dataProxySetting;
  /// The ID of ECS instance.
  final pulumi.Input<String>? instanceId;
  /// The number of CPU cores used by a single backup task, 0 means no restrictions.
  final pulumi.Input<String>? maxCpuCore;
  /// The number of concurrent jobs for a single backup task, 0 means no restrictions.
  final pulumi.Input<String>? maxWorker;
  /// Custom data plane proxy server host address.
  final pulumi.Input<String>? proxyHost;
  /// The password of custom data plane proxy server.
  final pulumi.Input<String>? proxyPassword;
  /// Custom data plane proxy server host port.
  final pulumi.Input<String>? proxyPort;
  /// The username of custom data plane proxy server.
  final pulumi.Input<String>? proxyUser;
  /// Status of client. Valid values: `ACTIVATED`, `STOPPED`. You can start or stop the client by specifying the status.
  final pulumi.Input<String>? status;
  /// Indicates whether to use the HTTPS protocol. Valid values: `true`, `false`.
  final pulumi.Input<bool>? useHttps;

  /// Creates a new [EcsBackupClientState].
  /// [dataNetworkType] The data plane access point type. Valid values: `CLASSIC`, `PUBLIC`, `VPC`. **NOTE:** The value of `CLASSIC` has been deprecated in v1.161.0+.
  /// [dataProxySetting] The data plane proxy settings. Valid values: `CUSTOM`, `DISABLE`, `USE_CONTROL_PROXY`.
  /// [instanceId] The ID of ECS instance.
  /// [maxCpuCore] The number of CPU cores used by a single backup task, 0 means no restrictions.
  /// [maxWorker] The number of concurrent jobs for a single backup task, 0 means no restrictions.
  /// [proxyHost] Custom data plane proxy server host address.
  /// [proxyPassword] The password of custom data plane proxy server.
  /// [proxyPort] Custom data plane proxy server host port.
  /// [proxyUser] The username of custom data plane proxy server.
  /// [status] Status of client. Valid values: `ACTIVATED`, `STOPPED`. You can start or stop the client by specifying the status.
  /// [useHttps] Indicates whether to use the HTTPS protocol. Valid values: `true`, `false`.
  const EcsBackupClientState({
    this.dataNetworkType,
    this.dataProxySetting,
    this.instanceId,
    this.maxCpuCore,
    this.maxWorker,
    this.proxyHost,
    this.proxyPassword,
    this.proxyPort,
    this.proxyUser,
    this.status,
    this.useHttps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataNetworkType': ?dataNetworkType,
      'dataProxySetting': ?dataProxySetting,
      'instanceId': ?instanceId,
      'maxCpuCore': ?maxCpuCore,
      'maxWorker': ?maxWorker,
      'proxyHost': ?proxyHost,
      'proxyPassword': ?proxyPassword,
      'proxyPort': ?proxyPort,
      'proxyUser': ?proxyUser,
      'status': ?status,
      'useHttps': ?useHttps,
    };
  }

  factory EcsBackupClientState.fromMap(Map<String, dynamic> map) {
    return EcsBackupClientState(
      dataNetworkType: (() { final guardedValue = map['dataNetworkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProxySetting: (() { final guardedValue = map['dataProxySetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxCpuCore: (() { final guardedValue = map['maxCpuCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxWorker: (() { final guardedValue = map['maxWorker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyHost: (() { final guardedValue = map['proxyHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyPassword: (() { final guardedValue = map['proxyPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyPort: (() { final guardedValue = map['proxyPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyUser: (() { final guardedValue = map['proxyUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useHttps: (() { final guardedValue = map['useHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

