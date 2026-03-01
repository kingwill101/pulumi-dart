// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KvAccount resources.
class KvAccountState {
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [KvAccountState].
  /// [status] The status of the resource.
  KvAccountState({
    pulumi.Output<String>? status,
  }) :
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory KvAccountState.fromMap(Map<String, dynamic> map) {
    return KvAccountState(
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

