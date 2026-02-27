import 'package:pulumi/pulumi.dart';
import '../event_connection_auth_parameters/event_connection_auth_parameters.dart';
import '../event_connection_invocation_connectivity_parameters/event_connection_invocation_connectivity_parameters.dart';
import 'event_connection_args.dart';

/// Provides an EventBridge connection resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
///
/// ### Basic Authorization
///
///
///
///
/// ### OAuth Authorization
///
///
///
///
/// ### Invocation Http Parameters
///
///
///
///
/// ### CMK Encryption
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge EventBridge connection using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventConnection:EventConnection test ngrok-connection
/// ```
class EventConnection extends CustomResource {
  /// The Amazon Resource Name (ARN) of the connection.
  late final Output<String> arn;

  /// Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  late final Output<EventConnectionAuthParameters> authParameters;

  /// Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  late final Output<String> authorizationType;

  /// Description for the connection. Maximum of 512 characters.
  late final Output<String?> description;

  /// Parameters to use for invoking a private API. Documented below.
  late final Output<EventConnectionInvocationConnectivityParameters?>
      invocationConnectivityParameters;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  late final Output<String?> kmsKeyIdentifier;

  /// The name for the connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the secret created from the authorization parameters specified for the connection.
  late final Output<String> secretArn;

  EventConnection(
    String name, {
    EventConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventConnection:EventConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authParameters =
        registerOutput<EventConnectionAuthParameters>('authParameters');
    this.authorizationType = registerOutput<String>('authorizationType');
    this.description = registerOutput<String?>('description');
    this.invocationConnectivityParameters =
        registerOutput<EventConnectionInvocationConnectivityParameters?>(
            'invocationConnectivityParameters');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.secretArn = registerOutput<String>('secretArn');
  }
}
