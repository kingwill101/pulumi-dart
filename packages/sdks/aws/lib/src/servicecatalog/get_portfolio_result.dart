// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPortfolio.
class GetPortfolioResult {
  final String? acceptLanguage;
  /// Portfolio ARN.
  final String? arn;
  /// Time the portfolio was created.
  final String? createdTime;
  /// Description of the portfolio
  final String? description;
  final String? id;
  /// Portfolio name.
  final String? name;
  /// Name of the person or organization who owns the portfolio.
  final String? providerName;
  final String? region;
  /// Tags applied to the portfolio.
  final Map<String, String>? tags;

  /// Creates a new [GetPortfolioResult].
  /// [acceptLanguage] Optional.
  /// [arn] Portfolio ARN.
  /// [createdTime] Time the portfolio was created.
  /// [description] Description of the portfolio
  /// [id] Optional.
  /// [name] Portfolio name.
  /// [providerName] Name of the person or organization who owns the portfolio.
  /// [region] Optional.
  /// [tags] Tags applied to the portfolio.
  const GetPortfolioResult({
    this.acceptLanguage,
    this.arn,
    this.createdTime,
    this.description,
    this.id,
    this.name,
    this.providerName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'arn': ?arn,
      'createdTime': ?createdTime,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'providerName': ?providerName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPortfolioResult.fromMap(Map<String, dynamic> map) {
    return GetPortfolioResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
