// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Slr resources.
class SlrState {
  final pulumi.Input<String>? productName;

  /// Creates a new [SlrState].
  /// [productName] Optional.
  SlrState({this.productName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'productName': ?productName};
  }

  factory SlrState.fromMap(Map<String, dynamic> map) {
    return SlrState(
      productName: (() {
        final guardedValue = map['productName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
