// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPortfolio.
class GetPortfolioResult {
  final String? acceptLanguage;
  /// Portfolio ARN.
  final String arn;
  /// Time the portfolio was created.
  final String createdTime;
  /// Description of the portfolio
  final String description;
  final String id;
  /// Portfolio name.
  final String name;
  /// Name of the person or organization who owns the portfolio.
  final String providerName;
  final String region;
  /// Tags applied to the portfolio.
  final Map<String, String> tags;

  /// Creates a new [GetPortfolioResult].
  /// [acceptLanguage] Optional.
  /// [arn] Portfolio ARN.
  /// [createdTime] Time the portfolio was created.
  /// [description] Description of the portfolio
  /// [id] Required.
  /// [name] Portfolio name.
  /// [providerName] Name of the person or organization who owns the portfolio.
  /// [region] Required.
  /// [tags] Tags applied to the portfolio.
  GetPortfolioResult({
    this.acceptLanguage,
    required this.arn,
    required this.createdTime,
    required this.description,
    required this.id,
    required this.name,
    required this.providerName,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'arn': arn,
      'createdTime': createdTime,
      'description': description,
      'id': id,
      'name': name,
      'providerName': providerName,
      'region': region,
      'tags': tags,
    };
  }

  factory GetPortfolioResult.fromMap(Map<String, dynamic> map) {
    return GetPortfolioResult(
      acceptLanguage: map['acceptLanguage'] == null ? null : map['acceptLanguage'] as String,
      arn: map['arn'] as String,
      createdTime: map['createdTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      providerName: map['providerName'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

