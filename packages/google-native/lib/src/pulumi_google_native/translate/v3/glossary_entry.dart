import 'package:pulumi/pulumi.dart';
import 'glossary_entry_args.dart';
import 'glossary_terms_pair_response.dart';
import 'glossary_terms_set_response.dart';

/// Creates a glossary entry.
class GlossaryEntry extends CustomResource {
  /// Describes the glossary entry.
  late final Output<String> description;
  late final Output<String> glossaryId;
  late final Output<String> location;

  /// The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  late final Output<String> name;
  late final Output<String> project;

  /// Used for an unidirectional glossary.
  late final Output<GlossaryTermsPairResponse> termsPair;

  /// Used for an equivalent term sets glossary.
  late final Output<GlossaryTermsSetResponse> termsSet;

  GlossaryEntry(
    String name, {
    GlossaryEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:translate/v3:GlossaryEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String>();
    this.glossaryId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.termsPair = Output.createUnknown<GlossaryTermsPairResponse>();
    this.termsSet = Output.createUnknown<GlossaryTermsSetResponse>();
  }
}
