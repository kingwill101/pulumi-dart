// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_botservice_list_qn_amaker_endpoint_key_args_doc}
/// Arguments for listQnAMakerEndpointKey.
/// {@endtemplate}
/// {@macro pulumi_botservice_list_qn_amaker_endpoint_key_args_doc}
class ListQnAMakerEndpointKeyArgs {
  /// Subscription key which provides access to this API.
  final pulumi.Input<String>? authkey;
  /// the host name of the QnA Maker endpoint
  final pulumi.Input<String>? hostname;

  /// Creates a new [ListQnAMakerEndpointKeyArgs].
  /// [authkey] Subscription key which provides access to this API.
  /// [hostname] the host name of the QnA Maker endpoint
  ListQnAMakerEndpointKeyArgs({
    pulumi.Output<String>? authkey,
    pulumi.Output<String>? hostname,
  }) :
      authkey = pulumi.Input.asOptionalInput<String>(authkey),
      hostname = pulumi.Input.asOptionalInput<String>(hostname);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authkey': ?authkey,
      'hostname': ?hostname,
    };
  }

  factory ListQnAMakerEndpointKeyArgs.fromMap(Map<String, dynamic> map) {
    return ListQnAMakerEndpointKeyArgs(
      authkey: map['authkey'] == null ? null : pulumi.Output.create<String>(map['authkey'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
    );
  }
}

