// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemOptions {
  /// Whether to enable the OpLock function. Value:
  /// - true: On.
  /// - false: does not turn on.
  ///
  /// &gt; **NOTE:**  Description Only file systems of the SMB protocol type are supported.
  final pulumi.Input<bool>? enableOplock;

  /// Creates a new [FileSystemOptions].
  /// [enableOplock] Whether to enable the OpLock function. Value:
  FileSystemOptions({this.enableOplock});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableOplock': ?enableOplock};
  }

  factory FileSystemOptions.fromMap(Map<String, dynamic> map) {
    return FileSystemOptions(
      enableOplock: (() {
        final guardedValue = map['enableOplock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
