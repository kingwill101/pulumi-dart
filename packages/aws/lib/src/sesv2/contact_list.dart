import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_list_args.dart';
import 'contact_list_topic.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Contact List.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ContactList("example", {contactListName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ContactList("example", contact_list_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.ContactList("example", new()
///     {
///         ContactListName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewContactList(ctx, "example", &sesv2.ContactListArgs{
/// 			ContactListName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.ContactList;
/// import com.pulumi.aws.sesv2.ContactListArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ContactList("example", ContactListArgs.builder()
///             .contactListName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ContactList
///     properties:
///       contactListName: example
/// ```
///
///
/// ### Extended Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ContactList("example", {
///     contactListName: "example",
///     description: "description",
///     topics: [{
///         defaultSubscriptionStatus: "OPT_IN",
///         description: "topic description",
///         displayName: "Example Topic",
///         topicName: "example-topic",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ContactList("example",
///     contact_list_name="example",
///     description="description",
///     topics=[{
///         "default_subscription_status": "OPT_IN",
///         "description": "topic description",
///         "display_name": "Example Topic",
///         "topic_name": "example-topic",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.ContactList("example", new()
///     {
///         ContactListName = "example",
///         Description = "description",
///         Topics = new[]
///         {
///             new Aws.SesV2.Inputs.ContactListTopicArgs
///             {
///                 DefaultSubscriptionStatus = "OPT_IN",
///                 Description = "topic description",
///                 DisplayName = "Example Topic",
///                 TopicName = "example-topic",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewContactList(ctx, "example", &sesv2.ContactListArgs{
/// 			ContactListName: pulumi.String("example"),
/// 			Description:     pulumi.String("description"),
/// 			Topics: sesv2.ContactListTopicArray{
/// 				&sesv2.ContactListTopicArgs{
/// 					DefaultSubscriptionStatus: pulumi.String("OPT_IN"),
/// 					Description:               pulumi.String("topic description"),
/// 					DisplayName:               pulumi.String("Example Topic"),
/// 					TopicName:                 pulumi.String("example-topic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.ContactList;
/// import com.pulumi.aws.sesv2.ContactListArgs;
/// import com.pulumi.aws.sesv2.inputs.ContactListTopicArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ContactList("example", ContactListArgs.builder()
///             .contactListName("example")
///             .description("description")
///             .topics(ContactListTopicArgs.builder()
///                 .defaultSubscriptionStatus("OPT_IN")
///                 .description("topic description")
///                 .displayName("Example Topic")
///                 .topicName("example-topic")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ContactList
///     properties:
///       contactListName: example
///       description: description
///       topics:
///         - defaultSubscriptionStatus: OPT_IN
///           description: topic description
///           displayName: Example Topic
///           topicName: example-topic
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Contact List using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/contactList:ContactList example example
/// ```
class ContactList extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  /// Name of the contact list.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> contactListName;
  /// Timestamp noting when the contact list was created in ISO 8601 format.
  late final pulumi.Output<String> createdTimestamp;
  /// Description of what the contact list is about.
  late final pulumi.Output<String?> description;
  /// Timestamp noting the last time the contact list was updated in ISO 8601 format.
  late final pulumi.Output<String> lastUpdatedTimestamp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags for the contact list. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block(s) with topic for the contact list. Detailed below.
  late final pulumi.Output<List<ContactListTopic>?> topics;

  /// Creates a new [ContactList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactList]. {@macro pulumi_sesv2_contact_list_contact_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactList(
    String name, {
    ContactListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/contactList:ContactList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contactListName = registerOutput<String>('contactListName');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.description = registerOutput<String?>('description');
    this.lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.topics = registerOutput<List<ContactListTopic>?>('topics');
  }
}
