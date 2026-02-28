// ignore_for_file: unused_element, unnecessary_cast

class FlowTaskConnectorOperator {
  /// Operation to be performed on the provided Amplitude source fields. The only valid value is `BETWEEN`.
  final String? amplitude;

  /// Operators supported by the custom connector. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? customConnector;

  /// Operation to be performed on the provided Datadog source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? datadog;

  /// Operation to be performed on the provided Dynatrace source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? dynatrace;

  /// Operation to be performed on the provided Google Analytics source fields. Valid values are `PROJECTION` and `BETWEEN`.
  final String? googleAnalytics;

  /// Operation to be performed on the provided Infor Nexus source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? inforNexus;

  /// Operation to be performed on the provided Marketo source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? marketo;

  /// Operation to be performed on the provided Amazon S3 source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? s3;

  /// Operation to be performed on the provided Salesforce source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? salesforce;

  /// Operation to be performed on the provided SAPOData source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? sapoData;

  /// Operation to be performed on the provided ServiceNow source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? serviceNow;

  /// Operation to be performed on the provided Singular source fields. Valid values are `PROJECTION`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? singular;

  /// Operation to be performed on the provided Slack source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? slack;

  /// Operation to be performed on the provided Trend Micro source fields. Valid values are `PROJECTION`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? trendmicro;

  /// Operation to be performed on the provided Veeva source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? veeva;

  /// Operation to be performed on the provided Zendesk source fields. Valid values are `PROJECTION`, `GREATER_THAN`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final String? zendesk;

  /// Creates a new [FlowTaskConnectorOperator].
  /// [amplitude] Operation to be performed on the provided Amplitude source fields. The only valid value is `BETWEEN`.
  /// [customConnector] Operators supported by the custom connector. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [datadog] Operation to be performed on the provided Datadog source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [dynatrace] Operation to be performed on the provided Dynatrace source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [googleAnalytics] Operation to be performed on the provided Google Analytics source fields. Valid values are `PROJECTION` and `BETWEEN`.
  /// [inforNexus] Operation to be performed on the provided Infor Nexus source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [marketo] Operation to be performed on the provided Marketo source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [s3] Operation to be performed on the provided Amazon S3 source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [salesforce] Operation to be performed on the provided Salesforce source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [sapoData] Operation to be performed on the provided SAPOData source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [serviceNow] Operation to be performed on the provided ServiceNow source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [singular] Operation to be performed on the provided Singular source fields. Valid values are `PROJECTION`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [slack] Operation to be performed on the provided Slack source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [trendmicro] Operation to be performed on the provided Trend Micro source fields. Valid values are `PROJECTION`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [veeva] Operation to be performed on the provided Veeva source fields. Valid values are `PROJECTION`, `LESS_THAN`, `GREATER_THAN`, `CONTAINS`, `BETWEEN`, `LESS_THAN_OR_EQUAL_TO`, `GREATER_THAN_OR_EQUAL_TO`, `EQUAL_TO`, `NOT_EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [zendesk] Operation to be performed on the provided Zendesk source fields. Valid values are `PROJECTION`, `GREATER_THAN`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  FlowTaskConnectorOperator({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.inforNexus,
    this.marketo,
    this.s3,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
    this.trendmicro,
    this.veeva,
    this.zendesk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amplitudeValue = amplitude;
    if (amplitudeValue != null) {
      map['amplitude'] = amplitudeValue;
    }
    final customConnectorValue = customConnector;
    if (customConnectorValue != null) {
      map['customConnector'] = customConnectorValue;
    }
    final datadogValue = datadog;
    if (datadogValue != null) {
      map['datadog'] = datadogValue;
    }
    final dynatraceValue = dynatrace;
    if (dynatraceValue != null) {
      map['dynatrace'] = dynatraceValue;
    }
    final googleAnalyticsValue = googleAnalytics;
    if (googleAnalyticsValue != null) {
      map['googleAnalytics'] = googleAnalyticsValue;
    }
    final inforNexusValue = inforNexus;
    if (inforNexusValue != null) {
      map['inforNexus'] = inforNexusValue;
    }
    final marketoValue = marketo;
    if (marketoValue != null) {
      map['marketo'] = marketoValue;
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value;
    }
    final salesforceValue = salesforce;
    if (salesforceValue != null) {
      map['salesforce'] = salesforceValue;
    }
    final sapoDataValue = sapoData;
    if (sapoDataValue != null) {
      map['sapoData'] = sapoDataValue;
    }
    final serviceNowValue = serviceNow;
    if (serviceNowValue != null) {
      map['serviceNow'] = serviceNowValue;
    }
    final singularValue = singular;
    if (singularValue != null) {
      map['singular'] = singularValue;
    }
    final slackValue = slack;
    if (slackValue != null) {
      map['slack'] = slackValue;
    }
    final trendmicroValue = trendmicro;
    if (trendmicroValue != null) {
      map['trendmicro'] = trendmicroValue;
    }
    final veevaValue = veeva;
    if (veevaValue != null) {
      map['veeva'] = veevaValue;
    }
    final zendeskValue = zendesk;
    if (zendeskValue != null) {
      map['zendesk'] = zendeskValue;
    }
    return map;
  }

  factory FlowTaskConnectorOperator.fromMap(Map<String, dynamic> map) {
    return FlowTaskConnectorOperator(
      amplitude: map['amplitude'] == null ? null : map['amplitude'] as String,
      customConnector: map['customConnector'] == null
          ? null
          : map['customConnector'] as String,
      datadog: map['datadog'] == null ? null : map['datadog'] as String,
      dynatrace: map['dynatrace'] == null ? null : map['dynatrace'] as String,
      googleAnalytics: map['googleAnalytics'] == null
          ? null
          : map['googleAnalytics'] as String,
      inforNexus:
          map['inforNexus'] == null ? null : map['inforNexus'] as String,
      marketo: map['marketo'] == null ? null : map['marketo'] as String,
      s3: map['s3'] == null ? null : map['s3'] as String,
      salesforce:
          map['salesforce'] == null ? null : map['salesforce'] as String,
      sapoData: map['sapoData'] == null ? null : map['sapoData'] as String,
      serviceNow:
          map['serviceNow'] == null ? null : map['serviceNow'] as String,
      singular: map['singular'] == null ? null : map['singular'] as String,
      slack: map['slack'] == null ? null : map['slack'] as String,
      trendmicro:
          map['trendmicro'] == null ? null : map['trendmicro'] as String,
      veeva: map['veeva'] == null ? null : map['veeva'] as String,
      zendesk: map['zendesk'] == null ? null : map['zendesk'] as String,
    );
  }
}
