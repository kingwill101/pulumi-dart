// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DevEnvironmentIdes {
  /// The name of the IDE. Valid values include Cloud9, IntelliJ, PyCharm, GoLand, and VSCode.
  final pulumi.Input<String>? name;
  /// A link to the IDE runtime image. This parameter is not required if the name is VSCode. Values of the runtime can be for example public.ecr.aws/jetbrains/py,public.ecr.aws/jetbrains/go
  final pulumi.Input<String>? runtime;

  /// Creates a new [DevEnvironmentIdes].
  /// [name] The name of the IDE. Valid values include Cloud9, IntelliJ, PyCharm, GoLand, and VSCode.
  /// [runtime] A link to the IDE runtime image. This parameter is not required if the name is VSCode. Values of the runtime can be for example public.ecr.aws/jetbrains/py,public.ecr.aws/jetbrains/go
  DevEnvironmentIdes({
    this.name,
    this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'runtime': ?runtime,
    };
  }

  factory DevEnvironmentIdes.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentIdes(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      runtime: map['runtime'] == null ? null : ((map['runtime'] as String).input()).input(),
    );
  }
}

