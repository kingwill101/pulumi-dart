// ignore_for_file: unused_element, unnecessary_cast

class NfsLocationOnPremConfig {
  /// List of Amazon Resource Names (ARNs) of the DataSync Agents used to connect to the NFS server.
  final List<String> agentArns;

  /// Creates a new [NfsLocationOnPremConfig].
  /// [agentArns] List of Amazon Resource Names (ARNs) of the DataSync Agents used to connect to the NFS server.
  NfsLocationOnPremConfig({
    required this.agentArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentArns'] = agentArns;
    return map;
  }

  factory NfsLocationOnPremConfig.fromMap(Map<String, dynamic> map) {
    return NfsLocationOnPremConfig(
      agentArns: (map['agentArns'] as List).cast<String>(),
    );
  }
}
