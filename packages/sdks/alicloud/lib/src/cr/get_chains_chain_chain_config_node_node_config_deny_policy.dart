// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChainsChainChainConfigNodeNodeConfigDenyPolicy {
  /// The action of trigger blocking. Valid values: `BLOCK`, `BLOCK_RETAG`, `BLOCK_DELETE_TAG`. While `Block` means block the delivery chain from continuing to execute, `BLOCK_RETAG` means block overwriting push image tag, `BLOCK_DELETE_TAG` means block deletion of mirror tags.
  final pulumi.Input<String>? action;
  /// The count of scanning vulnerabilities that triggers blocking.
  final pulumi.Input<String> issueCount;
  /// The level of scanning vulnerability that triggers blocking. Valid values: `LOW`, `MEDIUM`, `HIGH`, `UNKNOWN`.
  final pulumi.Input<String> issueLevel;
  /// The logic of trigger blocking. Valid values: `AND`, `OR`.
  final pulumi.Input<String> logic;

  /// Creates a new [GetChainsChainChainConfigNodeNodeConfigDenyPolicy].
  /// [action] The action of trigger blocking. Valid values: `BLOCK`, `BLOCK_RETAG`, `BLOCK_DELETE_TAG`. While `Block` means block the delivery chain from continuing to execute, `BLOCK_RETAG` means block overwriting push image tag, `BLOCK_DELETE_TAG` means block deletion of mirror tags.
  /// [issueCount] The count of scanning vulnerabilities that triggers blocking.
  /// [issueLevel] The level of scanning vulnerability that triggers blocking. Valid values: `LOW`, `MEDIUM`, `HIGH`, `UNKNOWN`.
  /// [logic] The logic of trigger blocking. Valid values: `AND`, `OR`.
  const GetChainsChainChainConfigNodeNodeConfigDenyPolicy({
    this.action,
    required this.issueCount,
    required this.issueLevel,
    required this.logic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'issueCount': issueCount,
      'issueLevel': issueLevel,
      'logic': logic,
    };
  }

  factory GetChainsChainChainConfigNodeNodeConfigDenyPolicy.fromMap(Map<String, dynamic> map) {
    return GetChainsChainChainConfigNodeNodeConfigDenyPolicy(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issueCount: pulumi.Input.fromValue(map['issueCount'] as String),
      issueLevel: pulumi.Input.fromValue(map['issueLevel'] as String),
      logic: pulumi.Input.fromValue(map['logic'] as String),
    );
  }
}

