// ignore_for_file: unused_element, unnecessary_cast

/// The profile information for an integer type field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfoResponse {
  /// Average of non-null values in the scanned data. NaN, if the field has a NaN.
  final double average;

  /// Maximum of non-null values in the scanned data. NaN, if the field has a NaN.
  final String max;

  /// Minimum of non-null values in the scanned data. NaN, if the field has a NaN.
  final String min;

  /// A quartile divides the number of data points into four parts, or quarters, of more-or-less equal size. Three main quartiles used are: The first quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is also known as the lower or 25th empirical quartile, as 25% of the data is below this point. The second quartile (Q2) is the median of a data set. So, 50% of the data lies below this point. The third quartile (Q3) splits off the highest 25% of data from the lowest 75%. It is known as the upper or 75th empirical quartile, as 75% of the data lies below this point. Here, the quartiles is provided as an ordered list of approximate quartile values for the scanned data, occurring in order Q1, median, Q3.
  final List<String> quartiles;

  /// Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN.
  final double standardDeviation;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfoResponse].
  /// [average] Average of non-null values in the scanned data. NaN, if the field has a NaN.
  /// [max] Maximum of non-null values in the scanned data. NaN, if the field has a NaN.
  /// [min] Minimum of non-null values in the scanned data. NaN, if the field has a NaN.
  /// [quartiles] A quartile divides the number of data points into four parts, or quarters, of more-or-less equal size. Three main quartiles used are: The first quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is also known as the lower or 25th empirical quartile, as 25% of the data is below this point. The second quartile (Q2) is the median of a data set. So, 50% of the data lies below this point. The third quartile (Q3) splits off the highest 25% of data from the lowest 75%. It is known as the upper or 75th empirical quartile, as 75% of the data lies below this point. Here, the quartiles is provided as an ordered list of approximate quartile values for the scanned data, occurring in order Q1, median, Q3.
  /// [standardDeviation] Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfoResponse({
    required this.average,
    required this.max,
    required this.min,
    required this.quartiles,
    required this.standardDeviation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'average': average,
      'max': max,
      'min': min,
      'quartiles': quartiles,
      'standardDeviation': standardDeviation,
    };
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfoResponse(
      average: map['average'] as double,
      max: map['max'] as String,
      min: map['min'] as String,
      quartiles: (map['quartiles'] as List).cast<String>(),
      standardDeviation: map['standardDeviation'] as double,
    );
  }
}
