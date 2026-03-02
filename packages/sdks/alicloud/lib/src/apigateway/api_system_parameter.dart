// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiSystemParameter {
  /// System parameter location; values: 'HEAD' and 'QUERY'.
  final pulumi.Input<String> in_;
  /// System parameter name which supports values including in [system parameter list](https://www.alibabacloud.com/help/doc-detail/43677.html).
  final pulumi.Input<String> name;
  /// Backend service's parameter name.
  final pulumi.Input<String> nameService;

  /// Creates a new [ApiSystemParameter].
  /// [in_] System parameter location; values: 'HEAD' and 'QUERY'.
  /// [name] System parameter name which supports values including in [system parameter list](https://www.alibabacloud.com/help/doc-detail/43677.html).
  /// [nameService] Backend service's parameter name.
  ApiSystemParameter({
    required this.in_,
    required this.name,
    required this.nameService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'in': in_,
      'name': name,
      'nameService': nameService,
    };
  }

  factory ApiSystemParameter.fromMap(Map<String, dynamic> map) {
    return ApiSystemParameter(
      in_: (map['in'] as String).input(),
      name: (map['name'] as String).input(),
      nameService: (map['nameService'] as String).input(),
    );
  }
}

