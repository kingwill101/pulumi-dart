// ignore_for_file: unused_element, unnecessary_cast


/// The daily volume cap for ingestion.
class WorkspaceCapping {
  /// The workspace daily quota for ingestion.
  final double? dailyQuotaGb;

  /// Creates a new [WorkspaceCapping].
  /// [dailyQuotaGb] The workspace daily quota for ingestion.
  WorkspaceCapping({
    this.dailyQuotaGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyQuotaGb': ?dailyQuotaGb,
    };
  }

  factory WorkspaceCapping.fromMap(Map<String, dynamic> map) {
    return WorkspaceCapping(
      dailyQuotaGb: map['dailyQuotaGb'] == null ? null : map['dailyQuotaGb'] as double,
    );
  }
}

