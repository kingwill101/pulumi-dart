// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartition.
class GetPartitionResult {
  /// Base DNS domain name for the current partition (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  final String? dnsSuffix;
  /// (**Deprecated**) Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China). Use `partition` instead.
  final String? id;
  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final String? partition;
  /// Prefix of service names (e.g., `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  final String? reverseDnsPrefix;

  /// Creates a new [GetPartitionResult].
  /// [dnsSuffix] Base DNS domain name for the current partition (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  /// [id] (**Deprecated**) Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China). Use `partition` instead.
  /// [partition] Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  /// [reverseDnsPrefix] Prefix of service names (e.g., `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  const GetPartitionResult({
    this.dnsSuffix,
    this.id,
    this.partition,
    this.reverseDnsPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSuffix': ?dnsSuffix,
      'id': ?id,
      'partition': ?partition,
      'reverseDnsPrefix': ?reverseDnsPrefix,
    };
  }

  factory GetPartitionResult.fromMap(Map<String, dynamic> map) {
    return GetPartitionResult(
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reverseDnsPrefix: (() { final guardedValue = map['reverseDnsPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
