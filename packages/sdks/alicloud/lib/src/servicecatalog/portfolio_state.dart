// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Portfolio resources.
class PortfolioState {
  /// The creation time of the portfolio
  final pulumi.Input<String>? createTime;
  /// The description of the portfolio
  final pulumi.Input<String>? description;
  /// The ARN of the portfolio
  final pulumi.Input<String>? portfolioArn;
  /// The name of the portfolio
  final pulumi.Input<String>? portfolioName;
  /// The provider name of the portfolio
  final pulumi.Input<String>? providerName;

  /// Creates a new [PortfolioState].
  /// [createTime] The creation time of the portfolio
  /// [description] The description of the portfolio
  /// [portfolioArn] The ARN of the portfolio
  /// [portfolioName] The name of the portfolio
  /// [providerName] The provider name of the portfolio
  PortfolioState({
    this.createTime,
    this.description,
    this.portfolioArn,
    this.portfolioName,
    this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'portfolioArn': ?portfolioArn,
      'portfolioName': ?portfolioName,
      'providerName': ?providerName,
    };
  }

  factory PortfolioState.fromMap(Map<String, dynamic> map) {
    return PortfolioState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      portfolioArn: map['portfolioArn'] == null ? null : (map['portfolioArn'] as String).input(),
      portfolioName: map['portfolioName'] == null ? null : (map['portfolioName'] as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName'] as String).input(),
    );
  }
}

