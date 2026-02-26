// ignore_for_file: unused_element, unnecessary_cast

class GCPolicyMaxVersion {
  /// Number of version before applying the GC policy.
  ///
  /// -----
  /// <span pulumi-lang-nodejs="`gcRules`" pulumi-lang-dotnet="`GcRules`" pulumi-lang-go="`gcRules`" pulumi-lang-python="`gc_rules`" pulumi-lang-yaml="`gcRules`" pulumi-lang-java="`gcRules`">`gc_rules`</span> include 2 fields:
  final int number;

  GCPolicyMaxVersion({
    required this.number,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['number'] = number;
    return map;
  }

  factory GCPolicyMaxVersion.fromMap(Map<String, dynamic> map) {
    return GCPolicyMaxVersion(
      number: map['number'] as int,
    );
  }
}
