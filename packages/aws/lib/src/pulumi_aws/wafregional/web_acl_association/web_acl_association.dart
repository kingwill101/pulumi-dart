import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_args.dart';

/// Manages an association with WAF Regional Web ACL.
///
/// > **Note:** An Application Load Balancer can only be associated with one WAF Regional WebACL.
///
/// ## Example Usage
///
/// ### Application Load Balancer Association
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Web ACL Association using their `web_acl_id:resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/webAclAssociation:WebAclAssociation foo web_acl_id:resource_arn
/// ```
class WebAclAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  late final pulumi.Output<String> resourceArn;

  /// The ID of the WAF Regional WebACL to create an association.
  late final pulumi.Output<String> webAclId;

  WebAclAssociation(
    String name, {
    WebAclAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAclAssociation:WebAclAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.webAclId = registerOutput<String>('webAclId');
  }
}
