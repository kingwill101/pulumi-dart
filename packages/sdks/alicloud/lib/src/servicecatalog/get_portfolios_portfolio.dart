// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPortfoliosPortfolio {
  /// The creation time of the portfolio
  final pulumi.Input<String> createTime;
  /// The description of the portfolio
  final pulumi.Input<String> description;
  /// The ID of the portfolio
  final pulumi.Input<String> id;
  /// The ARN of the portfolio
  final pulumi.Input<String> portfolioArn;
  /// The ID of the portfolio
  final pulumi.Input<String> portfolioId;
  /// The name of the portfolio
  final pulumi.Input<String> portfolioName;
  /// The provider name of the portfolio
  final pulumi.Input<String> providerName;

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
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      portfolioArn: (map['portfolioArn'] as String).input(),
      portfolioId: (map['portfolioId'] as String).input(),
      portfolioName: (map['portfolioName'] as String).input(),
      providerName: (map['providerName'] as String).input(),
    );
  }
}

