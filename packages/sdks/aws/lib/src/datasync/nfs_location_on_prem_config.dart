// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NfsLocationOnPremConfig {
  /// List of Amazon Resource Names (ARNs) of the DataSync Agents used to connect to the NFS server.
  final pulumi.Input<List<String>> agentArns;

  /// Creates a new [NfsLocationOnPremConfig].
  /// [agentArns] List of Amazon Resource Names (ARNs) of the DataSync Agents used to connect to the NFS server.
  const NfsLocationOnPremConfig({
    required this.agentArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentArns': agentArns,
    };
  }

  factory NfsLocationOnPremConfig.fromMap(Map<String, dynamic> map) {
    return NfsLocationOnPremConfig(
      agentArns: pulumi.Input.fromValue((map['agentArns'] as List).cast<String>()),
    );
  }
}

