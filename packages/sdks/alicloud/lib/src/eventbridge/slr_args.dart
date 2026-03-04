// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_slr_slr_args_doc}
/// The set of arguments for Slr.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_slr_slr_args_doc}
class SlrArgs {
  final pulumi.Input<String> productName;

  /// Creates a new [SlrArgs].
  /// [productName] Required.
  SlrArgs({required this.productName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'productName': productName};
  }

  factory SlrArgs.fromMap(Map<String, dynamic> map) {
    return SlrArgs(
      productName: pulumi.Input.fromValue(map['productName'] as String),
    );
  }
}
