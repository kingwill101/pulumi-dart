import 'package:pulumi/pulumi.dart';
import 'baidu_channel_args.dart';

/// Provides a Pinpoint Baidu Channel resource.
///
/// > **Note:** All arguments including the Api Key and Secret Key will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Baidu Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/baiduChannel:BaiduChannel channel application-id
/// ```
class BaiduChannel extends CustomResource {
  /// Platform credential API key from Baidu.
  late final Output<String> apiKey;

  /// The application ID.
  late final Output<String> applicationId;

  /// Specifies whether to enable the channel. Defaults to `true`.
  late final Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Platform credential Secret key from Baidu.
  late final Output<String> secretKey;

  BaiduChannel(
    String name, {
    BaiduChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/baiduChannel:BaiduChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.applicationId = registerOutput<String>('applicationId');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
    this.secretKey = registerOutput<String>('secretKey');
  }
}
