// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionLayer {
  /// The resource identifier of the layer version.
  final pulumi.Input<String> arn;
  /// The size of the layer code package. Unit: bytes.
  final pulumi.Input<String> size;

  /// Creates a new [GetV3FunctionsFunctionLayer].
  /// [arn] The resource identifier of the layer version.
  /// [size] The size of the layer code package. Unit: bytes.
  GetV3FunctionsFunctionLayer({
    required this.arn,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'size': size,
    };
  }

  factory GetV3FunctionsFunctionLayer.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionLayer(
      arn: (map['arn'] as String).input(),
      size: (map['size'] as String).input(),
    );
  }
}

