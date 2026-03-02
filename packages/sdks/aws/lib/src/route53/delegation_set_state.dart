// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DelegationSet resources.
class DelegationSetState {
  /// The Amazon Resource Name (ARN) of the Delegation Set.
  final pulumi.Input<String>? arn;
  /// A list of authoritative name servers for the hosted zone
  /// (effectively a list of NS records).
  final pulumi.Input<List<String>>? nameServers;
  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single delegation set amongst others)
  final pulumi.Input<String>? referenceName;

  /// Creates a new [DelegationSetState].
  /// [arn] The Amazon Resource Name (ARN) of the Delegation Set.
  /// [nameServers] A list of authoritative name servers for the hosted zone
  /// [referenceName] This is a reference name used in Caller Reference
  DelegationSetState({
    this.arn,
    this.nameServers,
    this.referenceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'nameServers': ?nameServers,
      'referenceName': ?referenceName,
    };
  }

  factory DelegationSetState.fromMap(Map<String, dynamic> map) {
    return DelegationSetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      nameServers: map['nameServers'] == null ? null : (((map['nameServers'] as List).cast<String>()).input()).input(),
      referenceName: map['referenceName'] == null ? null : ((map['referenceName'] as String).input()).input(),
    );
  }
}

