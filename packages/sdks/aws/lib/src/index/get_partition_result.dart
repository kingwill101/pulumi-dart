// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartition.
class GetPartitionResult {
  /// Base DNS domain name for the current partition (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  final String dnsSuffix;
  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final String id;
  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final String partition;
  /// Prefix of service names (e.g., `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  final String reverseDnsPrefix;

  /// Creates a new [GetPartitionResult].
  /// [dnsSuffix] Base DNS domain name for the current partition (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  /// [id] Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  /// [partition] Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  /// [reverseDnsPrefix] Prefix of service names (e.g., `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  GetPartitionResult({
    required this.dnsSuffix,
    required this.id,
    required this.partition,
    required this.reverseDnsPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSuffix': dnsSuffix,
      'id': id,
      'partition': partition,
      'reverseDnsPrefix': reverseDnsPrefix,
    };
  }

  factory GetPartitionResult.fromMap(Map<String, dynamic> map) {
    return GetPartitionResult(
      dnsSuffix: map['dnsSuffix'] as String,
      id: map['id'] as String,
      partition: map['partition'] as String,
      reverseDnsPrefix: map['reverseDnsPrefix'] as String,
    );
  }
}

