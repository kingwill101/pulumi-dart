// ignore_for_file: unused_element, unnecessary_cast


/// SQL VM assessment settings.
class SqlVmSettingsResponse {
  /// Gets or sets the Azure VM families (calling instance series to keep it
  /// consistent with other targets).
  final List<String>? instanceSeries;

  /// Creates a new [SqlVmSettingsResponse].
  /// [instanceSeries] Gets or sets the Azure VM families (calling instance series to keep it
  SqlVmSettingsResponse({
    this.instanceSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSeries': ?instanceSeries,
    };
  }

  factory SqlVmSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlVmSettingsResponse(
      instanceSeries: map['instanceSeries'] == null ? null : (map['instanceSeries'] as List).cast<String>(),
    );
  }
}

