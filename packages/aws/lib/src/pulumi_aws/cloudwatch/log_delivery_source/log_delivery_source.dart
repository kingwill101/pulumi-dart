import 'package:pulumi/pulumi.dart';
import 'log_delivery_source_args.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery Source.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery Source using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDeliverySource:LogDeliverySource example example
/// ```
class LogDeliverySource extends CustomResource {
  /// The Amazon Resource Name (ARN) of the delivery source.
  late final Output<String> arn;

  /// The type of log that the source is sending. For Amazon Bedrock, the valid value is `APPLICATION_LOGS`. For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`. For IAM Identity Center, the valid value is `ERROR_LOGS`. For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`, `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`, and `WORKMAIL_MAILBOX_ACCESS_LOGS`.
  late final Output<String> logType;

  /// The name for this delivery source.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the AWS resource that is generating and sending logs.
  late final Output<String> resourceArn;

  /// The AWS service that is sending logs.
  late final Output<String> service;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  LogDeliverySource(
    String name, {
    LogDeliverySourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliverySource:LogDeliverySource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.logType = registerOutput<String>('logType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.service = registerOutput<String>('service');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
