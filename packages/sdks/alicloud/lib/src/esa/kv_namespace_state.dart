// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KvNamespace resources.
class KvNamespaceState {
  /// The description of the namespace.
  final pulumi.Input<String>? description;
  /// The name of the namespace.
  final pulumi.Input<String>? kvNamespace;
  /// The status of the namespace.
  final pulumi.Input<String>? status;

  /// Creates a new [KvNamespaceState].
  /// [description] The description of the namespace.
  /// [kvNamespace] The name of the namespace.
  /// [status] The status of the namespace.
  KvNamespaceState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? kvNamespace,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      kvNamespace = pulumi.Input.asOptionalInput<String>(kvNamespace),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kvNamespace': ?kvNamespace,
      'status': ?status,
    };
  }

  factory KvNamespaceState.fromMap(Map<String, dynamic> map) {
    return KvNamespaceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kvNamespace: map['kvNamespace'] == null ? null : pulumi.Output.create<String>(map['kvNamespace'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

