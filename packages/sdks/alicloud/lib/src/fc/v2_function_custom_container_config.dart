// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2FunctionCustomContainerConfig {
  /// Image acceleration type. The value Default is to enable acceleration and None is to disable acceleration.
  final pulumi.Input<String>? accelerationType;
  /// Container startup parameters.
  final pulumi.Input<String>? args;
  /// Container start command, equivalent to Docker ENTRYPOINT.
  final pulumi.Input<String>? command;
  /// Container Image address. Example value: registry-vpc.cn-hangzhou.aliyuncs.com/fc-demo/helloworld:v1beta1.
  final pulumi.Input<String>? image;
  /// Whether the image is run in Web Server mode. The value of true needs to implement the Web Server in the container image to listen to the port and process the request. The value of false needs to actively exit the process after the container runs, and the ExitCode needs to be 0. Default true.
  final pulumi.Input<bool>? webServerMode;

  /// Creates a new [V2FunctionCustomContainerConfig].
  /// [accelerationType] Image acceleration type. The value Default is to enable acceleration and None is to disable acceleration.
  /// [args] Container startup parameters.
  /// [command] Container start command, equivalent to Docker ENTRYPOINT.
  /// [image] Container Image address. Example value: registry-vpc.cn-hangzhou.aliyuncs.com/fc-demo/helloworld:v1beta1.
  /// [webServerMode] Whether the image is run in Web Server mode. The value of true needs to implement the Web Server in the container image to listen to the port and process the request. The value of false needs to actively exit the process after the container runs, and the ExitCode needs to be 0. Default true.
  V2FunctionCustomContainerConfig({
    this.accelerationType,
    this.args,
    this.command,
    this.image,
    this.webServerMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationType': ?accelerationType,
      'args': ?args,
      'command': ?command,
      'image': ?image,
      'webServerMode': ?webServerMode,
    };
  }

  factory V2FunctionCustomContainerConfig.fromMap(Map<String, dynamic> map) {
    return V2FunctionCustomContainerConfig(
      accelerationType: map['accelerationType'] == null ? null : (map['accelerationType'] as String).input(),
      args: map['args'] == null ? null : (map['args'] as String).input(),
      command: map['command'] == null ? null : (map['command'] as String).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      webServerMode: map['webServerMode'] == null ? null : (map['webServerMode'] as bool).input(),
    );
  }
}

