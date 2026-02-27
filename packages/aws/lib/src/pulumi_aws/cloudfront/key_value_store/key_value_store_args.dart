// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../key_value_store_timeouts/key_value_store_timeouts.dart';

/// The set of arguments for KeyValueStore.
class KeyValueStoreArgs {
  /// Comment.
  final pulumi.Input<String>? comment;

  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  final pulumi.Input<KeyValueStoreTimeouts>? timeouts;

  KeyValueStoreArgs({
    this.comment,
    this.name,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          KeyValueStoreTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeyValueStoreArgs.fromMap(Map<String, dynamic> map) {
    return KeyValueStoreArgs(
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      timeouts:
          pulumi.Input.asOptionalInput<KeyValueStoreTimeouts>(map['timeouts']),
    );
  }
}
