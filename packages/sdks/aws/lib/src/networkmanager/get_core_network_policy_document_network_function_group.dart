// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentNetworkFunctionGroup {
  /// Optional description of the network function group.
  final pulumi.Input<String>? description;

  /// This identifies the network function group container.
  final pulumi.Input<String> name;

  /// This will be either `true`, that attachment acceptance is required, or `false`, that it is not required.
  final pulumi.Input<bool> requireAttachmentAcceptance;

  /// Creates a new [GetCoreNetworkPolicyDocumentNetworkFunctionGroup].
  /// [description] Optional description of the network function group.
  /// [name] This identifies the network function group container.
  /// [requireAttachmentAcceptance] This will be either `true`, that attachment acceptance is required, or `false`, that it is not required.
  GetCoreNetworkPolicyDocumentNetworkFunctionGroup({
    this.description,
    required this.name,
    required this.requireAttachmentAcceptance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'requireAttachmentAcceptance': requireAttachmentAcceptance,
    };
  }

  factory GetCoreNetworkPolicyDocumentNetworkFunctionGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCoreNetworkPolicyDocumentNetworkFunctionGroup(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      requireAttachmentAcceptance: pulumi.Input.fromValue(
        map['requireAttachmentAcceptance'] as bool,
      ),
    );
  }
}
