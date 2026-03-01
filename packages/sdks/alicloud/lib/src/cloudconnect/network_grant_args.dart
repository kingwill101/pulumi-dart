// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudconnect_network_grant_network_grant_args_doc}
/// The set of arguments for NetworkGrant.
/// {@endtemplate}
/// {@macro pulumi_cloudconnect_network_grant_network_grant_args_doc}
class NetworkGrantArgs {
  /// The ID of the CCN instance.
  final pulumi.Input<String> ccnId;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The ID of the account to which the CEN instance belongs.
  final pulumi.Input<String> cenUid;

  /// Creates a new [NetworkGrantArgs].
  /// [ccnId] The ID of the CCN instance.
  /// [cenId] The ID of the CEN instance.
  /// [cenUid] The ID of the account to which the CEN instance belongs.
  NetworkGrantArgs({
    required pulumi.Output<String> ccnId,
    required pulumi.Output<String> cenId,
    required pulumi.Output<String> cenUid,
  }) :
      ccnId = pulumi.Input.asInput<String>(ccnId),
      cenId = pulumi.Input.asInput<String>(cenId),
      cenUid = pulumi.Input.asInput<String>(cenUid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccnId': ccnId,
      'cenId': cenId,
      'cenUid': cenUid,
    };
  }

  factory NetworkGrantArgs.fromMap(Map<String, dynamic> map) {
    return NetworkGrantArgs(
      ccnId: pulumi.Output.create<String>(map['ccnId'] as String),
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      cenUid: pulumi.Output.create<String>(map['cenUid'] as String),
    );
  }
}

