// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_block.dart';
import 'google_cloud_documentai_v1_document_page_detected_barcode.dart';
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_dimension.dart';
import 'google_cloud_documentai_v1_document_page_form_field.dart';
import 'google_cloud_documentai_v1_document_page_image.dart';
import 'google_cloud_documentai_v1_document_page_image_quality_scores.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_page_line.dart';
import 'google_cloud_documentai_v1_document_page_matrix.dart';
import 'google_cloud_documentai_v1_document_page_paragraph.dart';
import 'google_cloud_documentai_v1_document_page_symbol.dart';
import 'google_cloud_documentai_v1_document_page_table.dart';
import 'google_cloud_documentai_v1_document_page_token.dart';
import 'google_cloud_documentai_v1_document_page_visual_element.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A page in a Document.
class GoogleCloudDocumentaiV1DocumentPage {
  /// A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
  final List<GoogleCloudDocumentaiV1DocumentPageBlock>? blocks;

  /// A list of detected barcodes.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>?
      detectedBarcodes;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Physical dimension of the page.
  final GoogleCloudDocumentaiV1DocumentPageDimension? dimension;

  /// A list of visually detected form fields on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageFormField>? formFields;

  /// Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.
  final GoogleCloudDocumentaiV1DocumentPageImage? image;

  /// Image quality scores.
  final GoogleCloudDocumentaiV1DocumentPageImageQualityScores?
      imageQualityScores;

  /// Layout for the page.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.
  final List<GoogleCloudDocumentaiV1DocumentPageLine>? lines;

  /// 1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.
  final int? pageNumber;

  /// A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.
  final List<GoogleCloudDocumentaiV1DocumentPageParagraph>? paragraphs;

  /// The history of this page.
  final GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of visually detected symbols on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageSymbol>? symbols;

  /// A list of visually detected tables on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageTable>? tables;

  /// A list of visually detected tokens on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageToken>? tokens;

  /// Transformation matrices that were applied to the original document image to produce Page.image.
  final List<GoogleCloudDocumentaiV1DocumentPageMatrix>? transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.
  final List<GoogleCloudDocumentaiV1DocumentPageVisualElement>? visualElements;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPage].
  /// [blocks] A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
  /// [detectedBarcodes] A list of detected barcodes.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [dimension] Physical dimension of the page.
  /// [formFields] A list of visually detected form fields on the page.
  /// [image] Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.
  /// [imageQualityScores] Image quality scores.
  /// [layout] Layout for the page.
  /// [lines] A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.
  /// [pageNumber] 1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.
  /// [paragraphs] A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.
  /// [provenance] The history of this page.
  /// [symbols] A list of visually detected symbols on the page.
  /// [tables] A list of visually detected tables on the page.
  /// [tokens] A list of visually detected tokens on the page.
  /// [transforms] Transformation matrices that were applied to the original document image to produce Page.image.
  /// [visualElements] A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.
  GoogleCloudDocumentaiV1DocumentPage({
    this.blocks,
    this.detectedBarcodes,
    this.detectedLanguages,
    this.dimension,
    this.formFields,
    this.image,
    this.imageQualityScores,
    this.layout,
    this.lines,
    this.pageNumber,
    this.paragraphs,
    this.provenance,
    this.symbols,
    this.tables,
    this.tokens,
    this.transforms,
    this.visualElements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blocksValue = blocks;
    if (blocksValue != null) {
      map['blocks'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageBlock,
          Map<String, dynamic>>(blocksValue, (value) => value.toMap());
    }
    final detectedBarcodesValue = detectedBarcodes;
    if (detectedBarcodesValue != null) {
      map['detectedBarcodes'] = pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedBarcode,
              Map<String, dynamic>>(
          detectedBarcodesValue, (value) => value.toMap());
    }
    final detectedLanguagesValue = detectedLanguages;
    if (detectedLanguagesValue != null) {
      map['detectedLanguages'] = pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>>(
          detectedLanguagesValue, (value) => value.toMap());
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue.toMap();
    }
    final formFieldsValue = formFields;
    if (formFieldsValue != null) {
      map['formFields'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageFormField,
          Map<String, dynamic>>(formFieldsValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    final imageQualityScoresValue = imageQualityScores;
    if (imageQualityScoresValue != null) {
      map['imageQualityScores'] = imageQualityScoresValue.toMap();
    }
    final layoutValue = layout;
    if (layoutValue != null) {
      map['layout'] = layoutValue.toMap();
    }
    final linesValue = lines;
    if (linesValue != null) {
      map['lines'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageLine,
          Map<String, dynamic>>(linesValue, (value) => value.toMap());
    }
    final pageNumberValue = pageNumber;
    if (pageNumberValue != null) {
      map['pageNumber'] = pageNumberValue;
    }
    final paragraphsValue = paragraphs;
    if (paragraphsValue != null) {
      map['paragraphs'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageParagraph,
          Map<String, dynamic>>(paragraphsValue, (value) => value.toMap());
    }
    final provenanceValue = provenance;
    if (provenanceValue != null) {
      map['provenance'] = provenanceValue.toMap();
    }
    final symbolsValue = symbols;
    if (symbolsValue != null) {
      map['symbols'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageSymbol,
          Map<String, dynamic>>(symbolsValue, (value) => value.toMap());
    }
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageTable,
          Map<String, dynamic>>(tablesValue, (value) => value.toMap());
    }
    final tokensValue = tokens;
    if (tokensValue != null) {
      map['tokens'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageToken,
          Map<String, dynamic>>(tokensValue, (value) => value.toMap());
    }
    final transformsValue = transforms;
    if (transformsValue != null) {
      map['transforms'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageMatrix,
          Map<String, dynamic>>(transformsValue, (value) => value.toMap());
    }
    final visualElementsValue = visualElements;
    if (visualElementsValue != null) {
      map['visualElements'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageVisualElement,
          Map<String, dynamic>>(visualElementsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPage.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPage(
      blocks: map['blocks'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageBlock>(
              map['blocks'],
              (value) => GoogleCloudDocumentaiV1DocumentPageBlock.fromMap(
                  (value as Map).cast<String, dynamic>())),
      detectedBarcodes: map['detectedBarcodes'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>(
              map['detectedBarcodes'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode.fromMap(
                      (value as Map).cast<String, dynamic>())),
      detectedLanguages: map['detectedLanguages'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
              map['detectedLanguages'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                      (value as Map).cast<String, dynamic>())),
      dimension: map['dimension'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      formFields: map['formFields'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageFormField>(
              map['formFields'],
              (value) => GoogleCloudDocumentaiV1DocumentPageFormField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      image: map['image'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      imageQualityScores: map['imageQualityScores'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromMap(
              (map['imageQualityScores'] as Map).cast<String, dynamic>()),
      layout: map['layout'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['layout'] as Map).cast<String, dynamic>()),
      lines: map['lines'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageLine>(
              map['lines'],
              (value) => GoogleCloudDocumentaiV1DocumentPageLine.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      paragraphs: map['paragraphs'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageParagraph>(
              map['paragraphs'],
              (value) => GoogleCloudDocumentaiV1DocumentPageParagraph.fromMap(
                  (value as Map).cast<String, dynamic>())),
      provenance: map['provenance'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>()),
      symbols: map['symbols'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageSymbol>(
              map['symbols'],
              (value) => GoogleCloudDocumentaiV1DocumentPageSymbol.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tables: map['tables'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTable>(
              map['tables'],
              (value) => GoogleCloudDocumentaiV1DocumentPageTable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tokens: map['tokens'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageToken>(
              map['tokens'],
              (value) => GoogleCloudDocumentaiV1DocumentPageToken.fromMap(
                  (value as Map).cast<String, dynamic>())),
      transforms: map['transforms'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageMatrix>(
              map['transforms'],
              (value) => GoogleCloudDocumentaiV1DocumentPageMatrix.fromMap(
                  (value as Map).cast<String, dynamic>())),
      visualElements: map['visualElements'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageVisualElement>(
              map['visualElements'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageVisualElement.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
