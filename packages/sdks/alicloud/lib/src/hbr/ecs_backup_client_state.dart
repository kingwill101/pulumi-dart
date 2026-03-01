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
  EcsBackupClientState({
    pulumi.Output<String>? dataNetworkType,
    pulumi.Output<String>? dataProxySetting,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? maxCpuCore,
    pulumi.Output<String>? maxWorker,
    pulumi.Output<String>? proxyHost,
    pulumi.Output<String>? proxyPassword,
    pulumi.Output<String>? proxyPort,
    pulumi.Output<String>? proxyUser,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? useHttps,
  }) :
      dataNetworkType = pulumi.Input.asOptionalInput<String>(dataNetworkType),
      dataProxySetting = pulumi.Input.asOptionalInput<String>(dataProxySetting),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      maxCpuCore = pulumi.Input.asOptionalInput<String>(maxCpuCore),
      maxWorker = pulumi.Input.asOptionalInput<String>(maxWorker),
      proxyHost = pulumi.Input.asOptionalInput<String>(proxyHost),
      proxyPassword = pulumi.Input.asOptionalInput<String>(proxyPassword),
      proxyPort = pulumi.Input.asOptionalInput<String>(proxyPort),
      proxyUser = pulumi.Input.asOptionalInput<String>(proxyUser),
      status = pulumi.Input.asOptionalInput<String>(status),
      useHttps = pulumi.Input.asOptionalInput<bool>(useHttps);

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
      dataNetworkType: map['dataNetworkType'] == null ? null : pulumi.Output.create<String>(map['dataNetworkType'] as String),
      dataProxySetting: map['dataProxySetting'] == null ? null : pulumi.Output.create<String>(map['dataProxySetting'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      maxCpuCore: map['maxCpuCore'] == null ? null : pulumi.Output.create<String>(map['maxCpuCore'] as String),
      maxWorker: map['maxWorker'] == null ? null : pulumi.Output.create<String>(map['maxWorker'] as String),
      proxyHost: map['proxyHost'] == null ? null : pulumi.Output.create<String>(map['proxyHost'] as String),
      proxyPassword: map['proxyPassword'] == null ? null : pulumi.Output.create<String>(map['proxyPassword'] as String),
      proxyPort: map['proxyPort'] == null ? null : pulumi.Output.create<String>(map['proxyPort'] as String),
      proxyUser: map['proxyUser'] == null ? null : pulumi.Output.create<String>(map['proxyUser'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      useHttps: map['useHttps'] == null ? null : pulumi.Output.create<bool>(map['useHttps'] as bool),
    );
  }
}

