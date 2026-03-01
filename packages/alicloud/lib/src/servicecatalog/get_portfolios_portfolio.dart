// ignore_for_file: unused_element, unnecessary_cast


class GetPortfoliosPortfolio {
  /// The creation time of the portfolio
  final String createTime;
  /// The description of the portfolio
  final String description;
  /// The ID of the portfolio
  final String id;
  /// The ARN of the portfolio
  final String portfolioArn;
  /// The ID of the portfolio
  final String portfolioId;
  /// The name of the portfolio
  final String portfolioName;
  /// The provider name of the portfolio
  final String providerName;

  /// Creates a new [GetPortfoliosPortfolio].
  /// [createTime] The creation time of the portfolio
  /// [description] The description of the portfolio
  /// [id] The ID of the portfolio
  /// [portfolioArn] The ARN of the portfolio
  /// [portfolioId] The ID of the portfolio
  /// [portfolioName] The name of the portfolio
  /// [providerName] The provider name of the portfolio
  GetPortfoliosPortfolio({
    required this.createTime,
    required this.description,
    required this.id,
    required this.portfolioArn,
    required this.portfolioId,
    required this.portfolioName,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'portfolioArn': portfolioArn,
      'portfolioId': portfolioId,
      'portfolioName': portfolioName,
      'providerName': providerName,
    };
  }

  factory GetPortfoliosPortfolio.fromMap(Map<String, dynamic> map) {
    return GetPortfoliosPortfolio(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      portfolioArn: map['portfolioArn'] as String,
      portfolioId: map['portfolioId'] as String,
      portfolioName: map['portfolioName'] as String,
      providerName: map['providerName'] as String,
    );
  }
}

