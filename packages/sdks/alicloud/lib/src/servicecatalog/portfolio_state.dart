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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? portfolioArn,
    pulumi.Output<String>? portfolioName,
    pulumi.Output<String>? providerName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      portfolioArn = pulumi.Input.asOptionalInput<String>(portfolioArn),
      portfolioName = pulumi.Input.asOptionalInput<String>(portfolioName),
      providerName = pulumi.Input.asOptionalInput<String>(providerName);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      portfolioArn: map['portfolioArn'] == null ? null : pulumi.Output.create<String>(map['portfolioArn'] as String),
      portfolioName: map['portfolioName'] == null ? null : pulumi.Output.create<String>(map['portfolioName'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
    );
  }
}

