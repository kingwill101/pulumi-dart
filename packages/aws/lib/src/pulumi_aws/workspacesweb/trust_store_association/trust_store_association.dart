import 'package:pulumi/pulumi.dart';
import 'trust_store_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Trust Store Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Trust Store Association using the `trust_store_arn,portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/trustStoreAssociation:TrustStoreAssociation example arn:aws:workspaces-web:us-west-2:123456789012:trustStore/trust_store-id-12345678,arn:aws:workspaces-web:us-west-2:123456789012:portal/portal-id-12345678
/// ```
class TrustStoreAssociation extends CustomResource {
  /// ARN of the portal to associate with the trust store. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the trust store to associate with the portal. Forces replacement if changed.
  late final Output<String> trustStoreArn;

  TrustStoreAssociation(
    String name, {
    TrustStoreAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/trustStoreAssociation:TrustStoreAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
    this.trustStoreArn = registerOutput<String>('trustStoreArn');
  }
}
